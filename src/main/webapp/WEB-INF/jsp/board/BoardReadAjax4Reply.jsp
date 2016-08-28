<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<div class="panel panel-default" id="replyItem<c:out value="${replyInfo.reno}"/>" style="margin-left: <c:out value="${20*replyInfo.redepth}"/>px;">
            	<div class="panel-body">
               		<div class="pull-left" style="width:42px; vertical-align: top; ">
			<a href="" style="width: 42px; height: 42px; border: 1px solid #ededed; border-radius: 50%; display: inline-block; overflow: hidden;">
				<i class="glyphicon glyphicon-user" style="font-size: 29pt; color:#337ab7"></i>
			</a>
		</div>					
                	<div style="width:auto; margin-left: 10px;">
			<div> 
				<c:out value="${replyInfo.rewriter}"/> <c:out value="${replyInfo.redate}"/>
				<c:if test='${replyInfo.userno==sessionScope.userno}' >
					<a href="javascript:fn_replyDelete('<c:out value="${replyInfo.reno}"/>')" title="<s:message code="common.btnDelete"/>" ><span class="text-muted"><i class="fa fa-times fa-fw"></i></span></span></a>
					<a href="javascript:fn_replyUpdate('<c:out value="${replyInfo.reno}"/>')" title="<s:message code="common.btnUpdate"/>" ><span class="text-muted"><i class="fa fa-edit fa-fw"></i></span></a>
				</c:if>
				<a href="javascript:fn_replyReply('<c:out value="${replyInfo.reno}"/>')" title="<s:message code="common.btnReply"/>" ><span class="text-muted"><i class="fa fa-comments fa-fw"></i></span></a>
			</div>
			<div id="reply<c:out value="${replyInfo.reno}"/>"><c:out value="${replyInfo.getRememoByHTML()}" escapeXml="false"/></div>
		</div>
	</div>
</div>						
