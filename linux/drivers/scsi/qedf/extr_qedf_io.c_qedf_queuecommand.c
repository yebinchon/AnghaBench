
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int device; } ;
struct qedf_rport {int ios_to_queue; int rport_lock; int free_sqes; scalar_t__ retry_delay_timestamp; int flags; } ;
struct qedf_ioreq {struct scsi_cmnd* sc_cmd; } ;
struct qedf_ctx {int dbg_ctx; int link_state; int flags; TYPE_1__* pdev; } ;
struct fc_rport_libfc_priv {int dummy; } ;
struct fc_rport {int port_id; struct fc_rport_libfc_priv* dd_data; } ;
struct fc_lport {scalar_t__ state; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int msix_enabled; } ;


 int DID_ERROR ;
 int DID_NO_CONNECT ;
 scalar_t__ LPORT_ST_READY ;
 int QEDF_DBG_STOP_IO ;
 int QEDF_DRAIN_ACTIVE ;
 int QEDF_ERR (int *,char*,int,int) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 scalar_t__ QEDF_LINK_UP ;
 int QEDF_LOG_IO ;
 int QEDF_MAX_BDS_PER_CMD ;
 int QEDF_RPORT_SESSION_READY ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 int QEDF_SCSI_CMD ;
 int QEDF_UNLOADING ;
 int QEDF_WARN (int *,char*) ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int SCSI_MLQUEUE_TARGET_BUSY ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int fc_remote_port_chkready (struct fc_rport*) ;
 int jiffies ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 struct qedf_ioreq* qedf_alloc_cmd (struct qedf_rport*,int ) ;
 scalar_t__ qedf_post_io_req (struct qedf_rport*,struct qedf_ioreq*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_target (int ) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fc_rport* starget_to_rport (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;
 int stub3 (struct scsi_cmnd*) ;
 int stub4 (struct scsi_cmnd*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

int
qedf_queuecommand(struct Scsi_Host *host, struct scsi_cmnd *sc_cmd)
{
 struct fc_lport *lport = shost_priv(host);
 struct qedf_ctx *qedf = lport_priv(lport);
 struct fc_rport *rport = starget_to_rport(scsi_target(sc_cmd->device));
 struct fc_rport_libfc_priv *rp = rport->dd_data;
 struct qedf_rport *fcport;
 struct qedf_ioreq *io_req;
 int rc = 0;
 int rval;
 unsigned long flags = 0;
 int num_sgs = 0;

 num_sgs = scsi_sg_count(sc_cmd);
 if (scsi_sg_count(sc_cmd) > QEDF_MAX_BDS_PER_CMD) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Number of SG elements %d exceeds what hardware limitation of %d.\n",
    num_sgs, QEDF_MAX_BDS_PER_CMD);
  sc_cmd->result = DID_ERROR;
  sc_cmd->scsi_done(sc_cmd);
  return 0;
 }

 if (test_bit(QEDF_UNLOADING, &qedf->flags) ||
     test_bit(QEDF_DBG_STOP_IO, &qedf->flags)) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
     "Returning DNC as unloading or stop io, flags 0x%lx.\n",
     qedf->flags);
  sc_cmd->result = DID_NO_CONNECT << 16;
  sc_cmd->scsi_done(sc_cmd);
  return 0;
 }

 if (!qedf->pdev->msix_enabled) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Completing sc_cmd=%p DID_NO_CONNECT as MSI-X is not enabled.\n",
      sc_cmd);
  sc_cmd->result = DID_NO_CONNECT << 16;
  sc_cmd->scsi_done(sc_cmd);
  return 0;
 }

 rval = fc_remote_port_chkready(rport);
 if (rval) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
     "fc_remote_port_chkready failed=0x%x for port_id=0x%06x.\n",
     rval, rport->port_id);
  sc_cmd->result = rval;
  sc_cmd->scsi_done(sc_cmd);
  return 0;
 }


 if (test_bit(QEDF_DRAIN_ACTIVE, &qedf->flags)) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO, "Drain active.\n");
  rc = SCSI_MLQUEUE_HOST_BUSY;
  goto exit_qcmd;
 }

 if (lport->state != LPORT_ST_READY ||
     atomic_read(&qedf->link_state) != QEDF_LINK_UP) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO, "Link down.\n");
  rc = SCSI_MLQUEUE_HOST_BUSY;
  goto exit_qcmd;
 }


 fcport = (struct qedf_rport *)&rp[1];

 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags) ||
     test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {




  rc = SCSI_MLQUEUE_TARGET_BUSY;
  goto exit_qcmd;
 }

 atomic_inc(&fcport->ios_to_queue);

 if (fcport->retry_delay_timestamp) {
  if (time_after(jiffies, fcport->retry_delay_timestamp)) {
   fcport->retry_delay_timestamp = 0;
  } else {

   rc = SCSI_MLQUEUE_TARGET_BUSY;
   atomic_dec(&fcport->ios_to_queue);
   goto exit_qcmd;
  }
 }

 io_req = qedf_alloc_cmd(fcport, QEDF_SCSI_CMD);
 if (!io_req) {
  rc = SCSI_MLQUEUE_HOST_BUSY;
  atomic_dec(&fcport->ios_to_queue);
  goto exit_qcmd;
 }

 io_req->sc_cmd = sc_cmd;


 spin_lock_irqsave(&fcport->rport_lock, flags);
 if (qedf_post_io_req(fcport, io_req)) {
  QEDF_WARN(&(qedf->dbg_ctx), "Unable to post io_req\n");

  atomic_inc(&fcport->free_sqes);
  rc = SCSI_MLQUEUE_HOST_BUSY;
 }
 spin_unlock_irqrestore(&fcport->rport_lock, flags);
 atomic_dec(&fcport->ios_to_queue);

exit_qcmd:
 return rc;
}
