
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef size_t u16 ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct qedf_rport {int flags; int rport_lock; struct fcoe_wqe* sq; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {int return_scsi_cmd_on_abts; scalar_t__ fcp_rsp_code; int refcount; struct scsi_cmnd* sc_cmd; int flags; int tm_done; int xid; scalar_t__ tm_flags; scalar_t__ data_xfer_len; int io_req_flags; int cpu; int cmd_type; struct qedf_rport* fcport; } ;
struct qedf_ctx {int dbg_ctx; int tasks; int target_resets; int lun_resets; struct fc_lport* lport; } ;
struct fcoe_wqe {int dummy; } ;
struct fc_lport {int dummy; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ lun; } ;


 int EAGAIN ;
 int FAILED ;
 scalar_t__ FCP_TMF_LUN_RESET ;
 scalar_t__ FCP_TMF_TGT_RESET ;
 int HZ ;
 int QEDF_CMD_OUTSTANDING ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*,int ) ;
 int QEDF_LOG_SCSI_TM ;
 int QEDF_READ ;
 int QEDF_RPORT_SESSION_READY ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 int QEDF_TASK_MGMT_CMD ;
 int QEDF_TM_TIMEOUT ;
 int SUCCESS ;
 int clear_bit (int ,int *) ;
 int init_completion (int *) ;
 int kref_put (int *,int ) ;
 int memset (struct fcoe_wqe*,int ,int) ;
 struct qedf_ioreq* qedf_alloc_cmd (struct qedf_rport*,int ) ;
 int qedf_flush_active_ios (struct qedf_rport*,int) ;
 size_t qedf_get_sqe_idx (struct qedf_rport*) ;
 struct e4_fcoe_task_context* qedf_get_task_mem (int *,int ) ;
 int qedf_init_task (struct qedf_rport*,struct fc_lport*,struct qedf_ioreq*,struct e4_fcoe_task_context*,struct fcoe_wqe*) ;
 int qedf_release_cmd ;
 int qedf_ring_doorbell (struct qedf_rport*) ;
 int set_bit (int ,int *) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int qedf_execute_tmf(struct qedf_rport *fcport, struct scsi_cmnd *sc_cmd,
 uint8_t tm_flags)
{
 struct qedf_ioreq *io_req;
 struct e4_fcoe_task_context *task;
 struct qedf_ctx *qedf = fcport->qedf;
 struct fc_lport *lport = qedf->lport;
 int rc = 0;
 uint16_t xid;
 int tmo = 0;
 int lun = 0;
 unsigned long flags;
 struct fcoe_wqe *sqe;
 u16 sqe_idx;

 if (!sc_cmd) {
  QEDF_ERR(&qedf->dbg_ctx, "sc_cmd is NULL\n");
  return FAILED;
 }

 lun = (int)sc_cmd->device->lun;
 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(&(qedf->dbg_ctx), "fcport not offloaded\n");
  rc = FAILED;
  goto no_flush;
 }

 io_req = qedf_alloc_cmd(fcport, QEDF_TASK_MGMT_CMD);
 if (!io_req) {
  QEDF_ERR(&(qedf->dbg_ctx), "Failed TMF");
  rc = -EAGAIN;
  goto no_flush;
 }

 if (tm_flags == FCP_TMF_LUN_RESET)
  qedf->lun_resets++;
 else if (tm_flags == FCP_TMF_TGT_RESET)
  qedf->target_resets++;


 io_req->sc_cmd = sc_cmd;
 io_req->fcport = fcport;
 io_req->cmd_type = QEDF_TASK_MGMT_CMD;


 io_req->cpu = smp_processor_id();


 io_req->io_req_flags = QEDF_READ;
 io_req->data_xfer_len = 0;
 io_req->tm_flags = tm_flags;


 io_req->return_scsi_cmd_on_abts = 0;


 xid = io_req->xid;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_SCSI_TM, "TMF io_req xid = "
     "0x%x\n", xid);


 task = qedf_get_task_mem(&qedf->tasks, xid);

 init_completion(&io_req->tm_done);

 spin_lock_irqsave(&fcport->rport_lock, flags);

 sqe_idx = qedf_get_sqe_idx(fcport);
 sqe = &fcport->sq[sqe_idx];
 memset(sqe, 0, sizeof(struct fcoe_wqe));

 qedf_init_task(fcport, lport, io_req, task, sqe);
 qedf_ring_doorbell(fcport);

 spin_unlock_irqrestore(&fcport->rport_lock, flags);

 set_bit(QEDF_CMD_OUTSTANDING, &io_req->flags);
 tmo = wait_for_completion_timeout(&io_req->tm_done,
     QEDF_TM_TIMEOUT * HZ);

 if (!tmo) {
  rc = FAILED;
  QEDF_ERR(&(qedf->dbg_ctx), "wait for tm_cmpl timeout!\n");

  clear_bit(QEDF_CMD_OUTSTANDING, &io_req->flags);
  io_req->sc_cmd = ((void*)0);
 } else {

  if (io_req->fcp_rsp_code == 0)
   rc = SUCCESS;
  else
   rc = FAILED;
 }




 if (test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "fcport is uploading, not executing flush.\n");
  goto no_flush;
 }

 kref_put(&io_req->refcount, qedf_release_cmd);


 if (tm_flags == FCP_TMF_LUN_RESET)
  qedf_flush_active_ios(fcport, lun);
 else
  qedf_flush_active_ios(fcport, -1);

no_flush:
 if (rc != SUCCESS) {
  QEDF_ERR(&(qedf->dbg_ctx), "task mgmt command failed...\n");
  rc = FAILED;
 } else {
  QEDF_ERR(&(qedf->dbg_ctx), "task mgmt command success...\n");
  rc = SUCCESS;
 }
 return rc;
}
