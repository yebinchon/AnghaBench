
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvme_fc_fcp_op {int fcp_req; TYPE_4__* queue; int state; } ;
struct nvme_fc_ctrl {int flags; TYPE_3__* rport; TYPE_2__* lport; int lock; int iocnt; } ;
struct TYPE_8__ {int lldd_handle; } ;
struct TYPE_7__ {int remoteport; } ;
struct TYPE_6__ {int localport; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* fcp_abort ) (int *,int *,int ,int *) ;} ;


 int ECANCELED ;
 int FCCTRL_TERMIO ;
 int FCPOP_STATE_ABORTED ;
 int FCPOP_STATE_ACTIVE ;
 int atomic_set (int *,int) ;
 int atomic_xchg (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *,int *,int ,int *) ;

__attribute__((used)) static int
__nvme_fc_abort_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_fcp_op *op)
{
 unsigned long flags;
 int opstate;

 spin_lock_irqsave(&ctrl->lock, flags);
 opstate = atomic_xchg(&op->state, FCPOP_STATE_ABORTED);
 if (opstate != FCPOP_STATE_ACTIVE)
  atomic_set(&op->state, opstate);
 else if (ctrl->flags & FCCTRL_TERMIO)
  ctrl->iocnt++;
 spin_unlock_irqrestore(&ctrl->lock, flags);

 if (opstate != FCPOP_STATE_ACTIVE)
  return -ECANCELED;

 ctrl->lport->ops->fcp_abort(&ctrl->lport->localport,
     &ctrl->rport->remoteport,
     op->queue->lldd_handle,
     &op->fcp_req);

 return 0;
}
