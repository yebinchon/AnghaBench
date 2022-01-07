
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t u16 ;
struct qedf_rport {int rport_lock; struct fcoe_wqe* sq; TYPE_2__* rdata; int free_sqes; struct qedf_ctx* qedf; int flags; } ;
struct qedf_ioreq {int return_scsi_cmd_on_abts; scalar_t__ tm_flags; int event; int xid; int * sc_cmd; int tm_done; int flags; int cleanup_done; TYPE_3__* task_params; int cmd_type; int refcount; struct qedf_rport* fcport; } ;
struct qedf_ctx {int dbg_ctx; int tasks; } ;
struct fcoe_wqe {int dummy; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct TYPE_6__ {struct fcoe_wqe* sqe; } ;
struct TYPE_4__ {int port_id; } ;
struct TYPE_5__ {TYPE_1__ ids; } ;


 int DID_ERROR ;
 int FAILED ;
 scalar_t__ FCP_TMF_LUN_RESET ;
 scalar_t__ FCP_TMF_TGT_RESET ;
 int HZ ;
 int QEDF_CLEANUP ;
 int QEDF_CLEANUP_TIMEOUT ;
 int QEDF_CMD_IN_CLEANUP ;
 int QEDF_CMD_OUTSTANDING ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,int ,...) ;
 int QEDF_IOREQ_EV_CLEANUP_FAILED ;
 int QEDF_IOREQ_EV_CLEANUP_SUCCESS ;
 int QEDF_LOG_IO ;
 int QEDF_LOG_SCSI_TM ;
 int QEDF_RPORT_SESSION_READY ;
 int SUCCESS ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int init_completion (int *) ;
 int init_initiator_cleanup_fcoe_task (TYPE_3__*) ;
 int kref_read (int *) ;
 int memset (struct fcoe_wqe*,int ,int) ;
 int qedf_drain_request (struct qedf_ctx*) ;
 size_t qedf_get_sqe_idx (struct qedf_rport*) ;
 struct e4_fcoe_task_context* qedf_get_task_mem (int *,int ) ;
 int qedf_ring_doorbell (struct qedf_rport*) ;
 int qedf_scsi_done (struct qedf_ctx*,struct qedf_ioreq*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,int) ;

int qedf_initiate_cleanup(struct qedf_ioreq *io_req,
 bool return_scsi_cmd_on_abts)
{
 struct qedf_rport *fcport;
 struct qedf_ctx *qedf;
 uint16_t xid;
 struct e4_fcoe_task_context *task;
 int tmo = 0;
 int rc = SUCCESS;
 unsigned long flags;
 struct fcoe_wqe *sqe;
 u16 sqe_idx;
 int refcount = 0;

 fcport = io_req->fcport;
 if (!fcport) {
  QEDF_ERR(((void*)0), "fcport is NULL.\n");
  return SUCCESS;
 }


 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(((void*)0), "tgt not offloaded\n");
  rc = 1;
  return SUCCESS;
 }

 qedf = fcport->qedf;
 if (!qedf) {
  QEDF_ERR(((void*)0), "qedf is NULL.\n");
  return SUCCESS;
 }

 if (!test_bit(QEDF_CMD_OUTSTANDING, &io_req->flags) ||
     test_and_set_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags)) {
  QEDF_ERR(&(qedf->dbg_ctx), "io_req xid=0x%x already in "
     "cleanup processing or already completed.\n",
     io_req->xid);
  return SUCCESS;
 }
 set_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags);


 if (!atomic_read(&fcport->free_sqes)) {
  QEDF_ERR(&(qedf->dbg_ctx), "No SQ entries available\n");

  clear_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags);
  return FAILED;
 }

 if (io_req->cmd_type == QEDF_CLEANUP) {
  QEDF_ERR(&qedf->dbg_ctx,
    "io_req=0x%x is already a cleanup command cmd_type=%d.\n",
    io_req->xid, io_req->cmd_type);
  clear_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags);
  return SUCCESS;
 }

 refcount = kref_read(&io_req->refcount);

 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
    "Entered xid=0x%x sc_cmd=%p cmd_type=%d flags=0x%lx refcount=%d fcport=%p port_id=0x%06x\n",
    io_req->xid, io_req->sc_cmd, io_req->cmd_type, io_req->flags,
    refcount, fcport, fcport->rdata->ids.port_id);


 xid = io_req->xid;
 io_req->cmd_type = QEDF_CLEANUP;
 io_req->return_scsi_cmd_on_abts = return_scsi_cmd_on_abts;

 task = qedf_get_task_mem(&qedf->tasks, xid);

 init_completion(&io_req->cleanup_done);

 spin_lock_irqsave(&fcport->rport_lock, flags);

 sqe_idx = qedf_get_sqe_idx(fcport);
 sqe = &fcport->sq[sqe_idx];
 memset(sqe, 0, sizeof(struct fcoe_wqe));
 io_req->task_params->sqe = sqe;

 init_initiator_cleanup_fcoe_task(io_req->task_params);
 qedf_ring_doorbell(fcport);

 spin_unlock_irqrestore(&fcport->rport_lock, flags);

 tmo = wait_for_completion_timeout(&io_req->cleanup_done,
       QEDF_CLEANUP_TIMEOUT * HZ);

 if (!tmo) {
  rc = FAILED;

  QEDF_ERR(&(qedf->dbg_ctx), "Cleanup command timeout, "
     "xid=%x.\n", io_req->xid);
  clear_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags);

  QEDF_ERR(&(qedf->dbg_ctx), "Issuing MCP drain request.\n");
  qedf_drain_request(qedf);
 }




 if (io_req->tm_flags == FCP_TMF_LUN_RESET ||
     io_req->tm_flags == FCP_TMF_TGT_RESET) {
  clear_bit(QEDF_CMD_OUTSTANDING, &io_req->flags);
  io_req->sc_cmd = ((void*)0);
  complete(&io_req->tm_done);
 }

 if (io_req->sc_cmd) {
  if (!io_req->return_scsi_cmd_on_abts)
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_SCSI_TM,
      "Not call scsi_done for xid=0x%x.\n",
      io_req->xid);
  if (io_req->return_scsi_cmd_on_abts)
   qedf_scsi_done(qedf, io_req, DID_ERROR);
 }

 if (rc == SUCCESS)
  io_req->event = QEDF_IOREQ_EV_CLEANUP_SUCCESS;
 else
  io_req->event = QEDF_IOREQ_EV_CLEANUP_FAILED;

 return rc;
}
