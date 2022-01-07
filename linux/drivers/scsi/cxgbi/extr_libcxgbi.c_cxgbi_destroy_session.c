
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int dd_data; } ;


 int CXGBI_DBG_ISCSI ;
 int iscsi_session_teardown (struct iscsi_cls_session*) ;
 int iscsi_tcp_r2tpool_free (int ) ;
 int log_debug (int,char*,struct iscsi_cls_session*) ;

void cxgbi_destroy_session(struct iscsi_cls_session *cls_session)
{
 log_debug(1 << CXGBI_DBG_ISCSI,
  "cls sess 0x%p.\n", cls_session);

 iscsi_tcp_r2tpool_free(cls_session->dd_data);
 iscsi_session_teardown(cls_session);
}
