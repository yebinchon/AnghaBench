
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_3__ {char* ptr; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; TYPE_2__* device; TYPE_1__ SCp; } ;
struct qedf_rport {struct fcoe_wqe* sq; int flags; } ;
struct qedf_ioreq {size_t xid; int lun; struct scsi_cmnd* sc_cmd; int flags; int refcount; scalar_t__ io_req_flags; int cpu; int sge_type; int data_xfer_len; } ;
struct qedf_ctx {int dbg_ctx; int tasks; int control_requests; int output_requests; int input_requests; } ;
struct fcoe_wqe {int dummy; } ;
struct fc_lport {int dummy; } ;
struct e4_fcoe_task_context {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef enum fcoe_task_type { ____Placeholder_fcoe_task_type } fcoe_task_type ;
struct TYPE_4__ {scalar_t__ lun; struct Scsi_Host* host; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int EAGAIN ;
 int EINVAL ;
 int FCOE_TASK_TYPE_READ_INITIATOR ;
 int FCOE_TASK_TYPE_WRITE_INITIATOR ;
 int QEDF_CMD_OUTSTANDING ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_IOREQ_FAST_SGE ;
 int QEDF_IO_TRACE_REQ ;
 scalar_t__ QEDF_READ ;
 int QEDF_RPORT_SESSION_READY ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 int QEDF_WARN (int *,char*,size_t) ;
 scalar_t__ QEDF_WRITE ;
 int kref_put (int *,int ) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 int memset (struct fcoe_wqe*,int ,int) ;
 scalar_t__ qedf_build_bd_list_from_sg (struct qedf_ioreq*) ;
 size_t qedf_get_sqe_idx (struct qedf_rport*) ;
 struct e4_fcoe_task_context* qedf_get_task_mem (int *,size_t) ;
 int qedf_init_task (struct qedf_rport*,struct fc_lport*,struct qedf_ioreq*,struct e4_fcoe_task_context*,struct fcoe_wqe*) ;
 scalar_t__ qedf_io_tracing ;
 int qedf_release_cmd ;
 int qedf_ring_doorbell (struct qedf_rport*) ;
 int qedf_trace_io (struct qedf_rport*,struct qedf_ioreq*,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int set_bit (int ,int *) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 int smp_processor_id () ;
 scalar_t__ test_bit (int ,int *) ;

int qedf_post_io_req(struct qedf_rport *fcport, struct qedf_ioreq *io_req)
{
 struct scsi_cmnd *sc_cmd = io_req->sc_cmd;
 struct Scsi_Host *host = sc_cmd->device->host;
 struct fc_lport *lport = shost_priv(host);
 struct qedf_ctx *qedf = lport_priv(lport);
 struct e4_fcoe_task_context *task_ctx;
 u16 xid;
 enum fcoe_task_type req_type = 0;
 struct fcoe_wqe *sqe;
 u16 sqe_idx;


 io_req->data_xfer_len = scsi_bufflen(sc_cmd);
 sc_cmd->SCp.ptr = (char *)io_req;
 io_req->sge_type = QEDF_IOREQ_FAST_SGE;


 io_req->cpu = smp_processor_id();

 if (sc_cmd->sc_data_direction == DMA_FROM_DEVICE) {
  req_type = FCOE_TASK_TYPE_READ_INITIATOR;
  io_req->io_req_flags = QEDF_READ;
  qedf->input_requests++;
 } else if (sc_cmd->sc_data_direction == DMA_TO_DEVICE) {
  req_type = FCOE_TASK_TYPE_WRITE_INITIATOR;
  io_req->io_req_flags = QEDF_WRITE;
  qedf->output_requests++;
 } else {
  io_req->io_req_flags = 0;
  qedf->control_requests++;
 }

 xid = io_req->xid;


 if (qedf_build_bd_list_from_sg(io_req)) {
  QEDF_ERR(&(qedf->dbg_ctx), "BD list creation failed.\n");

  io_req->sc_cmd = ((void*)0);
  kref_put(&io_req->refcount, qedf_release_cmd);
  return -EAGAIN;
 }

 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags) ||
     test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
  QEDF_ERR(&(qedf->dbg_ctx), "Session not offloaded yet.\n");

  io_req->sc_cmd = ((void*)0);
  kref_put(&io_req->refcount, qedf_release_cmd);
  return -EINVAL;
 }


 io_req->lun = (int)sc_cmd->device->lun;


 sqe_idx = qedf_get_sqe_idx(fcport);
 sqe = &fcport->sq[sqe_idx];
 memset(sqe, 0, sizeof(struct fcoe_wqe));


 task_ctx = qedf_get_task_mem(&qedf->tasks, xid);
 if (!task_ctx) {
  QEDF_WARN(&(qedf->dbg_ctx), "task_ctx is NULL, xid=%d.\n",
      xid);

  io_req->sc_cmd = ((void*)0);
  kref_put(&io_req->refcount, qedf_release_cmd);
  return -EINVAL;
 }

 qedf_init_task(fcport, lport, io_req, task_ctx, sqe);


 qedf_ring_doorbell(fcport);


 set_bit(QEDF_CMD_OUTSTANDING, &io_req->flags);

 if (qedf_io_tracing && io_req->sc_cmd)
  qedf_trace_io(fcport, io_req, QEDF_IO_TRACE_REQ);

 return 0;
}
