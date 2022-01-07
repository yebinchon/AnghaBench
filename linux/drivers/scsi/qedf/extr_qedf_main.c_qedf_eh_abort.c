
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ptr; } ;
struct scsi_cmnd {int * cmnd; TYPE_1__ SCp; TYPE_3__* device; } ;
struct qedf_rport {int flags; struct fc_rport_priv* rdata; } ;
struct qedf_ioreq {scalar_t__ event; int refcount; struct scsi_cmnd* xid; int abts_done; int fp_idx; struct scsi_cmnd* sc_cmd; } ;
struct qedf_ctx {int dbg_ctx; scalar_t__ stop_io_on_error; } ;
struct TYPE_5__ {int port_id; } ;
struct fc_rport_priv {int kref; TYPE_2__ ids; } ;
struct fc_rport_libfc_priv {int dummy; } ;
struct fc_rport {struct fc_rport_libfc_priv* dd_data; } ;
struct fc_lport {scalar_t__ state; int link_up; } ;
struct TYPE_6__ {int host; } ;


 int DID_ERROR ;
 int FAILED ;
 scalar_t__ LPORT_ST_READY ;
 int QEDF_ERR (int *,char*,...) ;
 scalar_t__ QEDF_IOREQ_EV_ABORT_FAILED ;
 scalar_t__ QEDF_IOREQ_EV_ABORT_SUCCESS ;
 scalar_t__ QEDF_IOREQ_EV_CLEANUP_SUCCESS ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 int SUCCESS ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int fc_rport_destroy ;
 int init_completion (int *) ;
 int kref_get_unless_zero (int *) ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 scalar_t__ lport_priv (struct fc_lport*) ;
 int msleep (int) ;
 int qedf_initiate_abts (struct qedf_ioreq*,int) ;
 int qedf_release_cmd ;
 int qedf_scsi_done (struct qedf_ctx*,struct qedf_ioreq*,int ) ;
 int qedf_stop_all_io (struct qedf_ctx*) ;
 int scsi_target (TYPE_3__*) ;
 struct fc_lport* shost_priv (int ) ;
 struct fc_rport* starget_to_rport (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int qedf_eh_abort(struct scsi_cmnd *sc_cmd)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(sc_cmd->device));
 struct fc_lport *lport;
 struct qedf_ctx *qedf;
 struct qedf_ioreq *io_req;
 struct fc_rport_libfc_priv *rp = rport->dd_data;
 struct fc_rport_priv *rdata;
 struct qedf_rport *fcport = ((void*)0);
 int rc = FAILED;
 int wait_count = 100;
 int refcount = 0;
 int rval;
 int got_ref = 0;

 lport = shost_priv(sc_cmd->device->host);
 qedf = (struct qedf_ctx *)lport_priv(lport);


 fcport = (struct qedf_rport *)&rp[1];
 rdata = fcport->rdata;
 if (!rdata || !kref_get_unless_zero(&rdata->kref)) {
  QEDF_ERR(&qedf->dbg_ctx, "stale rport, sc_cmd=%p\n", sc_cmd);
  rc = 1;
  goto out;
 }


 io_req = (struct qedf_ioreq *)sc_cmd->SCp.ptr;
 if (!io_req) {
  QEDF_ERR(&qedf->dbg_ctx,
    "sc_cmd not queued with lld, sc_cmd=%p op=0x%02x, port_id=%06x\n",
    sc_cmd, sc_cmd->cmnd[0],
    rdata->ids.port_id);
  rc = SUCCESS;
  goto drop_rdata_kref;
 }

 rval = kref_get_unless_zero(&io_req->refcount);
 if (rval)
  got_ref = 1;


 if (!rval || io_req->sc_cmd != sc_cmd) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Freed/Incorrect io_req, io_req->sc_cmd=%p, sc_cmd=%p, port_id=%06x, bailing out.\n",
    io_req->sc_cmd, sc_cmd, rdata->ids.port_id);

  goto drop_rdata_kref;
 }

 if (fc_remote_port_chkready(rport)) {
  refcount = kref_read(&io_req->refcount);
  QEDF_ERR(&qedf->dbg_ctx,
    "rport not ready, io_req=%p, xid=0x%x sc_cmd=%p op=0x%02x, refcount=%d, port_id=%06x\n",
    io_req, io_req->xid, sc_cmd, sc_cmd->cmnd[0],
    refcount, rdata->ids.port_id);

  goto drop_rdata_kref;
 }

 rc = fc_block_scsi_eh(sc_cmd);
 if (rc)
  goto drop_rdata_kref;

 if (test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Connection uploading, xid=0x%x., port_id=%06x\n",
    io_req->xid, rdata->ids.port_id);
  while (io_req->sc_cmd && (wait_count != 0)) {
   msleep(100);
   wait_count--;
  }
  if (wait_count) {
   QEDF_ERR(&qedf->dbg_ctx, "ABTS succeeded\n");
   rc = SUCCESS;
  } else {
   QEDF_ERR(&qedf->dbg_ctx, "ABTS failed\n");
   rc = FAILED;
  }
  goto drop_rdata_kref;
 }

 if (lport->state != LPORT_ST_READY || !(lport->link_up)) {
  QEDF_ERR(&qedf->dbg_ctx, "link not ready.\n");
  goto drop_rdata_kref;
 }

 QEDF_ERR(&qedf->dbg_ctx,
   "Aborting io_req=%p sc_cmd=%p xid=0x%x fp_idx=%d, port_id=%06x.\n",
   io_req, sc_cmd, io_req->xid, io_req->fp_idx,
   rdata->ids.port_id);

 if (qedf->stop_io_on_error) {
  qedf_stop_all_io(qedf);
  rc = SUCCESS;
  goto drop_rdata_kref;
 }

 init_completion(&io_req->abts_done);
 rval = qedf_initiate_abts(io_req, 1);
 if (rval) {
  QEDF_ERR(&(qedf->dbg_ctx), "Failed to queue ABTS.\n");




  rc = SUCCESS;
  qedf_scsi_done(qedf, io_req, DID_ERROR);
  goto drop_rdata_kref;
 }

 wait_for_completion(&io_req->abts_done);

 if (io_req->event == QEDF_IOREQ_EV_ABORT_SUCCESS ||
     io_req->event == QEDF_IOREQ_EV_ABORT_FAILED ||
     io_req->event == QEDF_IOREQ_EV_CLEANUP_SUCCESS) {





  rc = SUCCESS;
 } else {

  rc = FAILED;
 }

 if (rc == SUCCESS)
  QEDF_ERR(&(qedf->dbg_ctx), "ABTS succeeded, xid=0x%x.\n",
     io_req->xid);
 else
  QEDF_ERR(&(qedf->dbg_ctx), "ABTS failed, xid=0x%x.\n",
     io_req->xid);

drop_rdata_kref:
 kref_put(&rdata->kref, fc_rport_destroy);
out:
 if (got_ref)
  kref_put(&io_req->refcount, qedf_release_cmd);
 return rc;
}
