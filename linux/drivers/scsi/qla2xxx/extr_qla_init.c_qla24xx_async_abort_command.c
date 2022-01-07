
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct scsi_qla_host {TYPE_2__* hw; } ;
struct req_que {size_t num_outstanding_cmds; TYPE_3__** outstanding_cmds; } ;
struct qla_qpair {int qp_lock_ptr; struct req_que* req; } ;
struct TYPE_9__ {scalar_t__ type; struct qla_qpair* qpair; TYPE_4__* fcport; } ;
typedef TYPE_3__ srb_t ;
struct TYPE_10__ {struct scsi_qla_host* vha; } ;
typedef TYPE_4__ fc_port_t ;
struct TYPE_7__ {int fcport; } ;
struct TYPE_8__ {TYPE_1__ mr; } ;


 int FXDISC_ABORT_IOCTL ;
 int QLA_FUNCTION_FAILED ;
 scalar_t__ SRB_FXIOCB_DCMD ;
 int qla24xx_async_abort_cmd (TYPE_3__*,int) ;
 int qlafx00_fx_disc (struct scsi_qla_host*,int *,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int
qla24xx_async_abort_command(srb_t *sp)
{
 unsigned long flags = 0;

 uint32_t handle;
 fc_port_t *fcport = sp->fcport;
 struct qla_qpair *qpair = sp->qpair;
 struct scsi_qla_host *vha = fcport->vha;
 struct req_que *req = qpair->req;

 spin_lock_irqsave(qpair->qp_lock_ptr, flags);
 for (handle = 1; handle < req->num_outstanding_cmds; handle++) {
  if (req->outstanding_cmds[handle] == sp)
   break;
 }
 spin_unlock_irqrestore(qpair->qp_lock_ptr, flags);

 if (handle == req->num_outstanding_cmds) {

  return QLA_FUNCTION_FAILED;
 }
 if (sp->type == SRB_FXIOCB_DCMD)
  return qlafx00_fx_disc(vha, &vha->hw->mr.fcport,
      FXDISC_ABORT_IOCTL);

 return qla24xx_async_abort_cmd(sp, 1);
}
