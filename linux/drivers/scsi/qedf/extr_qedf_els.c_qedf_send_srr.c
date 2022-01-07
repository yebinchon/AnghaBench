
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qedf_rport {struct qedf_ctx* qedf; int flags; } ;
struct qedf_ioreq {int flags; int refcount; int xid; int rx_id; struct qedf_rport* fcport; } ;
struct qedf_els_cb_arg {struct qedf_ioreq* aborted_io_req; } ;
struct qedf_ctx {int dbg_ctx; struct fc_lport* lport; } ;
struct fcp_srr {int srr_r_ctl; int srr_rel_off; void* srr_rx_id; void* srr_ox_id; int srr_op; } ;
struct fc_lport {int r_a_tov; } ;
typedef int srr ;


 int EINVAL ;
 int ELS_SRR ;
 int ENOMEM ;
 int GFP_NOIO ;
 int QEDF_CMD_SRR_SENT ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,struct qedf_ioreq*,int ) ;
 int QEDF_LOG_ELS ;
 int QEDF_RPORT_SESSION_READY ;
 int htonl (int ) ;
 void* htons (int ) ;
 int kfree (struct qedf_els_cb_arg*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 struct qedf_els_cb_arg* kzalloc (int,int ) ;
 int memset (struct fcp_srr*,int ,int) ;
 int qedf_initiate_abts (struct qedf_ioreq*,int) ;
 int qedf_initiate_els (struct qedf_rport*,int ,struct fcp_srr*,int,int ,struct qedf_els_cb_arg*,int ) ;
 int qedf_release_cmd ;
 int qedf_srr_compl ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qedf_send_srr(struct qedf_ioreq *orig_io_req, u32 offset, u8 r_ctl)
{
 struct fcp_srr srr;
 struct qedf_ctx *qedf;
 struct qedf_rport *fcport;
 struct fc_lport *lport;
 struct qedf_els_cb_arg *cb_arg = ((void*)0);
 u32 r_a_tov;
 int rc;

 if (!orig_io_req) {
  QEDF_ERR(((void*)0), "orig_io_req is NULL.\n");
  return -EINVAL;
 }

 fcport = orig_io_req->fcport;


 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(((void*)0), "fcport is no longer offloaded.\n");
  return -EINVAL;
 }

 if (!fcport->qedf) {
  QEDF_ERR(((void*)0), "fcport->qedf is NULL.\n");
  return -EINVAL;
 }


 kref_get(&orig_io_req->refcount);

 qedf = fcport->qedf;
 lport = qedf->lport;
 r_a_tov = lport->r_a_tov;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Sending SRR orig_io=%p, "
     "orig_xid=0x%x\n", orig_io_req, orig_io_req->xid);
 memset(&srr, 0, sizeof(srr));

 cb_arg = kzalloc(sizeof(struct qedf_els_cb_arg), GFP_NOIO);
 if (!cb_arg) {
  QEDF_ERR(&(qedf->dbg_ctx), "Unable to allocate cb_arg for "
     "SRR\n");
  rc = -ENOMEM;
  goto srr_err;
 }

 cb_arg->aborted_io_req = orig_io_req;

 srr.srr_op = ELS_SRR;
 srr.srr_ox_id = htons(orig_io_req->xid);
 srr.srr_rx_id = htons(orig_io_req->rx_id);
 srr.srr_rel_off = htonl(offset);
 srr.srr_r_ctl = r_ctl;

 rc = qedf_initiate_els(fcport, ELS_SRR, &srr, sizeof(srr),
     qedf_srr_compl, cb_arg, r_a_tov);

srr_err:
 if (rc) {
  QEDF_ERR(&(qedf->dbg_ctx), "SRR failed - release orig_io_req"
     "=0x%x\n", orig_io_req->xid);
  kfree(cb_arg);

  qedf_initiate_abts(orig_io_req, 1);
  kref_put(&orig_io_req->refcount, qedf_release_cmd);
 } else

  set_bit(QEDF_CMD_SRR_SENT, &orig_io_req->flags);

 return rc;
}
