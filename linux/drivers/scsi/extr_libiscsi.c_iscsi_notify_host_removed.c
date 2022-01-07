
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dd_data; } ;


 int ISCSI_ERR_INVALID_HOST ;
 int iscsi_session_failure (int ,int ) ;

__attribute__((used)) static void iscsi_notify_host_removed(struct iscsi_cls_session *cls_session)
{
 iscsi_session_failure(cls_session->dd_data, ISCSI_ERR_INVALID_HOST);
}
