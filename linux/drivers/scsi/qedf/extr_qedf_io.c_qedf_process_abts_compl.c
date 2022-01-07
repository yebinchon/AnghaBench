
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct qedf_rport {int flags; } ;
struct qedf_ioreq {int refcount; int abts_done; scalar_t__ return_scsi_cmd_on_abts; int xid; scalar_t__ sc_cmd; int flags; int event; int state; int rrq_work; int timeout_work; int cmd_type; struct qedf_rport* fcport; } ;
struct qedf_ctx {int dbg_ctx; TYPE_3__* lport; int dpc_wq; } ;
struct TYPE_4__ {int r_ctl; } ;
struct TYPE_5__ {TYPE_1__ abts_info; } ;
struct fcoe_cqe {TYPE_2__ cqe_info; } ;
struct TYPE_6__ {int r_a_tov; } ;


 int DID_ERROR ;


 int QEDFC_CMD_ST_RRQ_WAIT ;
 int QEDF_CMD_IN_ABORT ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 int QEDF_IOREQ_EV_ABORT_FAILED ;
 int QEDF_IOREQ_EV_ABORT_SUCCESS ;
 int QEDF_LOG_IO ;
 int QEDF_LOG_SCSI_TM ;
 int QEDF_RPORT_IN_LUN_RESET ;
 int QEDF_RPORT_IN_TARGET_RESET ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int kref_get_unless_zero (int *) ;
 int kref_put (int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int qedf_release_cmd ;
 int qedf_scsi_done (struct qedf_ctx*,struct qedf_ioreq*,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void qedf_process_abts_compl(struct qedf_ctx *qedf, struct fcoe_cqe *cqe,
 struct qedf_ioreq *io_req)
{
 uint32_t r_ctl;
 uint16_t xid;
 int rc;
 struct qedf_rport *fcport = io_req->fcport;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM, "Entered with xid = "
     "0x%x cmd_type = %d\n", io_req->xid, io_req->cmd_type);

 xid = io_req->xid;
 r_ctl = cqe->cqe_info.abts_info.r_ctl;





 if (!fcport) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
     "Dropping ABTS completion xid=0x%x as fcport is NULL",
     io_req->xid);
  return;
 }





 if (test_bit(QEDF_RPORT_IN_TARGET_RESET, &fcport->flags) ||
     test_bit(QEDF_RPORT_IN_LUN_RESET, &fcport->flags)) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
     "Dropping ABTS completion xid=0x%x as fcport is flushing",
     io_req->xid);
  return;
 }

 if (!cancel_delayed_work(&io_req->timeout_work)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Wasn't able to cancel abts timeout work.\n");
 }

 switch (r_ctl) {
 case 129:
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM,
      "ABTS response - ACC Send RRQ after R_A_TOV\n");
  io_req->event = QEDF_IOREQ_EV_ABORT_SUCCESS;
  rc = kref_get_unless_zero(&io_req->refcount);
  if (!rc) {
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_SCSI_TM,
      "kref is already zero so ABTS was already completed or flushed xid=0x%x.\n",
      io_req->xid);
   return;
  }




  queue_delayed_work(qedf->dpc_wq, &io_req->rrq_work,
      msecs_to_jiffies(qedf->lport->r_a_tov));
  atomic_set(&io_req->state, QEDFC_CMD_ST_RRQ_WAIT);
  break;

 case 128:
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM,
     "ABTS response - RJT\n");
  io_req->event = QEDF_IOREQ_EV_ABORT_FAILED;
  break;
 default:
  QEDF_ERR(&(qedf->dbg_ctx), "Unknown ABTS response\n");
  break;
 }

 clear_bit(QEDF_CMD_IN_ABORT, &io_req->flags);

 if (io_req->sc_cmd) {
  if (!io_req->return_scsi_cmd_on_abts)
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_SCSI_TM,
      "Not call scsi_done for xid=0x%x.\n",
      io_req->xid);
  if (io_req->return_scsi_cmd_on_abts)
   qedf_scsi_done(qedf, io_req, DID_ERROR);
 }


 complete(&io_req->abts_done);

 kref_put(&io_req->refcount, qedf_release_cmd);
}
