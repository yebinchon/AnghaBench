
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_endpoint {int handle; } ;
struct qedi_ctx {int dbg_ctx; int cdev; } ;
struct qedi_conn {int iscsi_conn_id; scalar_t__ cmd_cleanup_cmpl; scalar_t__ cmd_cleanup_req; struct qedi_endpoint* ep; } ;
struct iscsi_task {int dummy; } ;
struct TYPE_2__ {int (* clear_sq ) (int ,int ) ;} ;


 int QEDI_ERR (int *,char*,int ) ;
 int QEDI_INFO (int *,int ,char*,int ,struct qedi_conn*,struct qedi_endpoint*) ;
 int QEDI_LOG_INFO ;
 int QEDI_WARN (int *,char*,int ) ;
 int WARN_ON (int) ;
 int qedi_cleanup_all_io (struct qedi_ctx*,struct qedi_conn*,struct iscsi_task*,int) ;
 TYPE_1__* qedi_ops ;
 int stub1 (int ,int ) ;

void qedi_clearsq(struct qedi_ctx *qedi, struct qedi_conn *qedi_conn,
    struct iscsi_task *task)
{
 struct qedi_endpoint *qedi_ep;
 int rval;

 qedi_ep = qedi_conn->ep;
 qedi_conn->cmd_cleanup_req = 0;
 qedi_conn->cmd_cleanup_cmpl = 0;

 if (!qedi_ep) {
  QEDI_WARN(&qedi->dbg_ctx,
     "Cannot proceed, ep already disconnected, cid=0x%x\n",
     qedi_conn->iscsi_conn_id);
  return;
 }

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
    "Clearing SQ for cid=0x%x, conn=%p, ep=%p\n",
    qedi_conn->iscsi_conn_id, qedi_conn, qedi_ep);

 qedi_ops->clear_sq(qedi->cdev, qedi_ep->handle);

 rval = qedi_cleanup_all_io(qedi, qedi_conn, task, 1);
 if (rval) {
  QEDI_ERR(&qedi->dbg_ctx,
    "fatal error, need hard reset, cid=0x%x\n",
    qedi_conn->iscsi_conn_id);
  WARN_ON(1);
 }
}
