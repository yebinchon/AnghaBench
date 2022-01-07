
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_ctx {int dbg_ctx; } ;
struct qedi_conn {int abrt_conn; struct iscsi_cls_conn* cls_conn; int iscsi_conn_id; } ;
struct iscsi_conn {TYPE_1__* session; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_2__ {int state; } ;


 int ISCSI_ERR_CONN_FAILED ;
 int QEDI_ERR (int *,char*,int ,int ) ;
 int iscsi_conn_failure (struct iscsi_conn*,int ) ;
 struct iscsi_cls_session* iscsi_conn_to_session (struct iscsi_cls_conn*) ;
 scalar_t__ iscsi_is_session_online (struct iscsi_cls_session*) ;

void qedi_start_conn_recovery(struct qedi_ctx *qedi,
         struct qedi_conn *qedi_conn)
{
 struct iscsi_cls_session *cls_sess;
 struct iscsi_cls_conn *cls_conn;
 struct iscsi_conn *conn;

 cls_conn = qedi_conn->cls_conn;
 conn = cls_conn->dd_data;
 cls_sess = iscsi_conn_to_session(cls_conn);

 if (iscsi_is_session_online(cls_sess)) {
  qedi_conn->abrt_conn = 1;
  QEDI_ERR(&qedi->dbg_ctx,
    "Failing connection, state=0x%x, cid=0x%x\n",
    conn->session->state, qedi_conn->iscsi_conn_id);
  iscsi_conn_failure(qedi_conn->cls_conn->dd_data,
       ISCSI_ERR_CONN_FAILED);
 }
}
