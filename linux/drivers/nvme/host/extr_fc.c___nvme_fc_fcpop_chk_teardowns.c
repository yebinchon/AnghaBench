
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_fcp_op {int dummy; } ;
struct nvme_fc_ctrl {int flags; int lock; int ioabort_wait; int iocnt; } ;


 int FCCTRL_TERMIO ;
 int FCPOP_STATE_ABORTED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
__nvme_fc_fcpop_chk_teardowns(struct nvme_fc_ctrl *ctrl,
  struct nvme_fc_fcp_op *op, int opstate)
{
 unsigned long flags;

 if (opstate == FCPOP_STATE_ABORTED) {
  spin_lock_irqsave(&ctrl->lock, flags);
  if (ctrl->flags & FCCTRL_TERMIO) {
   if (!--ctrl->iocnt)
    wake_up(&ctrl->ioabort_wait);
  }
  spin_unlock_irqrestore(&ctrl->lock, flags);
 }
}
