
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct TYPE_10__ {int * ptr; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__ SCp; int * cmnd; TYPE_5__* device; TYPE_4__* request; } ;
struct qedf_rport {int retry_delay_timestamp; scalar_t__ lun_reset_lun; int flags; } ;
struct qedf_ioreq {int xid; int fcp_rsp_len; int cdb_status; int fcp_status; int refcount; struct scsi_cmnd* sc_cmd; int flags; scalar_t__ fcp_resid; scalar_t__ fcp_rsp_code; struct qedf_rport* fcport; } ;
struct qedf_ctx {int dbg_ctx; int busy; int task_set_fulls; TYPE_2__* lport; int tasks; } ;
struct TYPE_13__ {int flags; } ;
struct fcoe_cqe_rsp_info {int retry_delay_timer; int fw_residual; TYPE_6__ rsp_flags; int fw_error_flags; } ;
struct TYPE_14__ {struct fcoe_cqe_rsp_info rsp_info; } ;
struct fcoe_cqe {TYPE_7__ cqe_info; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct TYPE_12__ {scalar_t__ lun; int id; } ;
struct TYPE_11__ {int q; } ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_8__ {int host_no; } ;


 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_OK ;
 int FCOE_CQE_RSP_INFO_FW_UNDERRUN ;

 scalar_t__ GET_FIELD (int ,int ) ;
 int HZ ;
 int QEDF_CMD_IN_ABORT ;
 int QEDF_CMD_IN_CLEANUP ;
 int QEDF_CMD_OUTSTANDING ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,int,...) ;
 int QEDF_IO_TRACE_RSP ;
 int QEDF_LOG_IO ;
 int QEDF_RETRY_DELAY_MAX ;
 int QEDF_RPORT_IN_LUN_RESET ;
 int QEDF_RPORT_IN_TARGET_RESET ;
 int QEDF_WARN (int *,char*,...) ;
 int SAM_STAT_BUSY ;
 int SAM_STAT_TASK_SET_FULL ;
 int clear_bit (int ,int *) ;
 int jiffies ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 struct e4_fcoe_task_context* qedf_get_task_mem (int *,int) ;
 scalar_t__ qedf_io_tracing ;
 int qedf_parse_fcp_rsp (struct qedf_ioreq*,struct fcoe_cqe_rsp_info*) ;
 int qedf_release_cmd ;
 int qedf_retry_delay ;
 int qedf_trace_io (struct qedf_rport*,struct qedf_ioreq*,int ) ;
 int qedf_unmap_sg_list (struct qedf_ctx*,struct qedf_ioreq*) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ test_bit (int ,int *) ;

void qedf_scsi_completion(struct qedf_ctx *qedf, struct fcoe_cqe *cqe,
 struct qedf_ioreq *io_req)
{
 u16 xid;
 struct e4_fcoe_task_context *task_ctx;
 struct scsi_cmnd *sc_cmd;
 struct fcoe_cqe_rsp_info *fcp_rsp;
 struct qedf_rport *fcport;
 int refcount;
 u16 scope, qualifier = 0;
 u8 fw_residual_flag = 0;

 if (!io_req)
  return;
 if (!cqe)
  return;

 if (!test_bit(QEDF_CMD_OUTSTANDING, &io_req->flags) ||
     test_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags) ||
     test_bit(QEDF_CMD_IN_ABORT, &io_req->flags)) {
  QEDF_ERR(&qedf->dbg_ctx,
    "io_req xid=0x%x already in cleanup or abort processing or already completed.\n",
    io_req->xid);
  return;
 }

 xid = io_req->xid;
 task_ctx = qedf_get_task_mem(&qedf->tasks, xid);
 sc_cmd = io_req->sc_cmd;
 fcp_rsp = &cqe->cqe_info.rsp_info;

 if (!sc_cmd) {
  QEDF_WARN(&(qedf->dbg_ctx), "sc_cmd is NULL!\n");
  return;
 }

 if (!sc_cmd->SCp.ptr) {
  QEDF_WARN(&(qedf->dbg_ctx), "SCp.ptr is NULL, returned in "
      "another context.\n");
  return;
 }

 if (!sc_cmd->device) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Device for sc_cmd %p is NULL.\n", sc_cmd);
  return;
 }

 if (!sc_cmd->request) {
  QEDF_WARN(&(qedf->dbg_ctx), "sc_cmd->request is NULL, "
      "sc_cmd=%p.\n", sc_cmd);
  return;
 }

 if (!sc_cmd->request->q) {
  QEDF_WARN(&(qedf->dbg_ctx), "request->q is NULL so request "
     "is not valid, sc_cmd=%p.\n", sc_cmd);
  return;
 }

 fcport = io_req->fcport;





 if (test_bit(QEDF_RPORT_IN_TARGET_RESET, &fcport->flags) ||
     (test_bit(QEDF_RPORT_IN_LUN_RESET, &fcport->flags) &&
      sc_cmd->device->lun == (u64)fcport->lun_reset_lun)) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
     "Dropping good completion xid=0x%x as fcport is flushing",
     io_req->xid);
  return;
 }

 qedf_parse_fcp_rsp(io_req, fcp_rsp);

 qedf_unmap_sg_list(qedf, io_req);


 if (io_req->fcp_rsp_len > 3 && io_req->fcp_rsp_code) {
  QEDF_ERR(&(qedf->dbg_ctx),
      "FCP I/O protocol failure xid=0x%x fcp_rsp_len=%d "
      "fcp_rsp_code=%d.\n", io_req->xid, io_req->fcp_rsp_len,
      io_req->fcp_rsp_code);
  sc_cmd->result = DID_BUS_BUSY << 16;
  goto out;
 }

 fw_residual_flag = GET_FIELD(cqe->cqe_info.rsp_info.fw_error_flags,
     FCOE_CQE_RSP_INFO_FW_UNDERRUN);
 if (fw_residual_flag) {
  QEDF_ERR(&qedf->dbg_ctx,
    "Firmware detected underrun: xid=0x%x fcp_rsp.flags=0x%02x fcp_resid=%d fw_residual=0x%x lba=%02x%02x%02x%02x.\n",
    io_req->xid, fcp_rsp->rsp_flags.flags,
    io_req->fcp_resid,
    cqe->cqe_info.rsp_info.fw_residual, sc_cmd->cmnd[2],
    sc_cmd->cmnd[3], sc_cmd->cmnd[4], sc_cmd->cmnd[5]);

  if (io_req->cdb_status == 0)
   sc_cmd->result = (DID_ERROR << 16) | io_req->cdb_status;
  else
   sc_cmd->result = (DID_OK << 16) | io_req->cdb_status;





  scsi_set_resid(sc_cmd, scsi_bufflen(sc_cmd));
  goto out;
 }

 switch (io_req->fcp_status) {
 case 128:
  if (io_req->cdb_status == 0) {

   sc_cmd->result = DID_OK << 16;
  } else {
   refcount = kref_read(&io_req->refcount);
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
       "%d:0:%d:%lld xid=0x%0x op=0x%02x "
       "lba=%02x%02x%02x%02x cdb_status=%d "
       "fcp_resid=0x%x refcount=%d.\n",
       qedf->lport->host->host_no, sc_cmd->device->id,
       sc_cmd->device->lun, io_req->xid,
       sc_cmd->cmnd[0], sc_cmd->cmnd[2], sc_cmd->cmnd[3],
       sc_cmd->cmnd[4], sc_cmd->cmnd[5],
       io_req->cdb_status, io_req->fcp_resid,
       refcount);
   sc_cmd->result = (DID_OK << 16) | io_req->cdb_status;

   if (io_req->cdb_status == SAM_STAT_TASK_SET_FULL ||
       io_req->cdb_status == SAM_STAT_BUSY) {







    scope = fcp_rsp->retry_delay_timer & 0xC000;

    qualifier = fcp_rsp->retry_delay_timer & 0x3FFF;

    if (qedf_retry_delay &&
        scope > 0 && qualifier > 0 &&
        qualifier <= 0x3FEF) {

     if (qualifier > QEDF_RETRY_DELAY_MAX)
      qualifier =
          QEDF_RETRY_DELAY_MAX;
     fcport->retry_delay_timestamp =
         jiffies + (qualifier * HZ / 10);
    }

    if (io_req->cdb_status ==
        SAM_STAT_TASK_SET_FULL)
     qedf->task_set_fulls++;
    else
     qedf->busy++;
   }
  }
  if (io_req->fcp_resid)
   scsi_set_resid(sc_cmd, io_req->fcp_resid);
  break;
 default:
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO, "fcp_status=%d.\n",
      io_req->fcp_status);
  break;
 }

out:
 if (qedf_io_tracing)
  qedf_trace_io(fcport, io_req, QEDF_IO_TRACE_RSP);





 clear_bit(QEDF_CMD_OUTSTANDING, &io_req->flags);

 io_req->sc_cmd = ((void*)0);
 sc_cmd->SCp.ptr = ((void*)0);
 sc_cmd->scsi_done(sc_cmd);
 kref_put(&io_req->refcount, qedf_release_cmd);
}
