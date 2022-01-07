
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ioreq {scalar_t__ event; scalar_t__ xid; int refcount; int timeout_work; struct qedf_els_cb_arg* cb_arg; } ;
struct qedf_els_cb_arg {int r_ctl; int offset; } ;
struct qedf_ctx {int dbg_ctx; } ;
struct fcoe_cqe {int dummy; } ;


 int QEDF_ERR (int *,char*,scalar_t__) ;
 scalar_t__ QEDF_IOREQ_EV_ELS_TMO ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct qedf_els_cb_arg*) ;
 int kref_put (int *,int ) ;
 int qedf_release_cmd ;
 int qedf_send_srr (struct qedf_ioreq*,int ,int ) ;

void qedf_process_seq_cleanup_compl(struct qedf_ctx *qedf,
 struct fcoe_cqe *cqe, struct qedf_ioreq *io_req)
{
 int rc;
 struct qedf_els_cb_arg *cb_arg;

 cb_arg = io_req->cb_arg;


 if (io_req->event == QEDF_IOREQ_EV_ELS_TMO || !cqe) {
  QEDF_ERR(&qedf->dbg_ctx,
    "cqe is NULL or timeout event (0x%x)", io_req->event);
  goto free;
 }


 cancel_delayed_work_sync(&io_req->timeout_work);

 rc = qedf_send_srr(io_req, cb_arg->offset, cb_arg->r_ctl);
 if (rc)
  QEDF_ERR(&(qedf->dbg_ctx), "Unable to send SRR, I/O will "
      "abort, xid=0x%x.\n", io_req->xid);
free:
 kfree(cb_arg);
 kref_put(&io_req->refcount, qedf_release_cmd);
}
