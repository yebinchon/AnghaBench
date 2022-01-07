
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dd_data; } ;


 int ISCSI_ERR_CONN_FAILED ;
 int iscsi_session_failure (int ,int ) ;

void beiscsi_session_fail(struct iscsi_cls_session *cls_session)
{
 iscsi_session_failure(cls_session->dd_data, ISCSI_ERR_CONN_FAILED);
}
