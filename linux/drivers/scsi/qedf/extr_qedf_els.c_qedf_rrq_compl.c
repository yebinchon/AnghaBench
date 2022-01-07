
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_ioreq {scalar_t__ event; int refcount; int xid; int timeout_work; TYPE_1__* fcport; } ;
struct qedf_els_cb_arg {struct qedf_ioreq* aborted_io_req; struct qedf_ioreq* io_req; } ;
struct qedf_ctx {int dbg_ctx; } ;
struct TYPE_2__ {struct qedf_ctx* qedf; } ;


 int QEDF_ERR (int *,char*,struct qedf_ioreq*) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 scalar_t__ QEDF_IOREQ_EV_ELS_ERR_DETECT ;
 scalar_t__ QEDF_IOREQ_EV_ELS_TMO ;
 int QEDF_LOG_ELS ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct qedf_els_cb_arg*) ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 int qedf_release_cmd ;

__attribute__((used)) static void qedf_rrq_compl(struct qedf_els_cb_arg *cb_arg)
{
 struct qedf_ioreq *orig_io_req;
 struct qedf_ioreq *rrq_req;
 struct qedf_ctx *qedf;
 int refcount;

 rrq_req = cb_arg->io_req;
 qedf = rrq_req->fcport->qedf;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Entered.\n");

 orig_io_req = cb_arg->aborted_io_req;

 if (!orig_io_req) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Original io_req is NULL, rrq_req = %p.\n", rrq_req);
  goto out_free;
 }

 if (rrq_req->event != QEDF_IOREQ_EV_ELS_TMO &&
     rrq_req->event != QEDF_IOREQ_EV_ELS_ERR_DETECT)
  cancel_delayed_work_sync(&orig_io_req->timeout_work);

 refcount = kref_read(&orig_io_req->refcount);
 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "rrq_compl: orig io = %p,"
     " orig xid = 0x%x, rrq_xid = 0x%x, refcount=%d\n",
     orig_io_req, orig_io_req->xid, rrq_req->xid, refcount);






 if (orig_io_req && refcount > 0)
  kref_put(&orig_io_req->refcount, qedf_release_cmd);

out_free:






 if (rrq_req->event == QEDF_IOREQ_EV_ELS_TMO)
  kref_put(&rrq_req->refcount, qedf_release_cmd);
 kfree(cb_arg);
}
