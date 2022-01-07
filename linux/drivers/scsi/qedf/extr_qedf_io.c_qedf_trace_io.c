
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct scsi_cmnd {int result; int * cmnd; TYPE_3__* device; } ;
struct qedf_rport {TYPE_2__* rdata; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {int sge_type; scalar_t__ int_cpu; int cpu; int refcount; int xid; struct scsi_cmnd* sc_cmd; } ;
struct qedf_io_log {int sge_type; scalar_t__ rsp_cpu; scalar_t__ int_cpu; int req_cpu; int refcount; int jiffies; int result; int sg_count; int bufflen; int * lba; int op; int lun; int port_id; int task_id; scalar_t__ direction; } ;
struct qedf_ctx {size_t io_trace_idx; int io_trace_lock; struct qedf_io_log* io_trace_buf; } ;
typedef scalar_t__ int8_t ;
struct TYPE_6__ {int lun; } ;
struct TYPE_4__ {int port_id; } ;
struct TYPE_5__ {TYPE_1__ ids; } ;


 scalar_t__ QEDF_IO_TRACE_REQ ;
 scalar_t__ QEDF_IO_TRACE_RSP ;
 size_t QEDF_IO_TRACE_SIZE ;
 int jiffies ;
 int kref_read (int *) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 scalar_t__ smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qedf_trace_io(struct qedf_rport *fcport, struct qedf_ioreq *io_req,
     int8_t direction)
{
 struct qedf_ctx *qedf = fcport->qedf;
 struct qedf_io_log *io_log;
 struct scsi_cmnd *sc_cmd = io_req->sc_cmd;
 unsigned long flags;
 uint8_t op;

 spin_lock_irqsave(&qedf->io_trace_lock, flags);

 io_log = &qedf->io_trace_buf[qedf->io_trace_idx];
 io_log->direction = direction;
 io_log->task_id = io_req->xid;
 io_log->port_id = fcport->rdata->ids.port_id;
 io_log->lun = sc_cmd->device->lun;
 io_log->op = op = sc_cmd->cmnd[0];
 io_log->lba[0] = sc_cmd->cmnd[2];
 io_log->lba[1] = sc_cmd->cmnd[3];
 io_log->lba[2] = sc_cmd->cmnd[4];
 io_log->lba[3] = sc_cmd->cmnd[5];
 io_log->bufflen = scsi_bufflen(sc_cmd);
 io_log->sg_count = scsi_sg_count(sc_cmd);
 io_log->result = sc_cmd->result;
 io_log->jiffies = jiffies;
 io_log->refcount = kref_read(&io_req->refcount);

 if (direction == QEDF_IO_TRACE_REQ) {

  io_log->req_cpu = io_req->cpu;
  io_log->int_cpu = 0;
  io_log->rsp_cpu = 0;
 } else if (direction == QEDF_IO_TRACE_RSP) {
  io_log->req_cpu = io_req->cpu;
  io_log->int_cpu = io_req->int_cpu;
  io_log->rsp_cpu = smp_processor_id();
 }

 io_log->sge_type = io_req->sge_type;

 qedf->io_trace_idx++;
 if (qedf->io_trace_idx == QEDF_IO_TRACE_SIZE)
  qedf->io_trace_idx = 0;

 spin_unlock_irqrestore(&qedf->io_trace_lock, flags);
}
