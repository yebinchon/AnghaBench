
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int state; int lock; int state_wq; } ;
typedef enum nvme_ctrl_state { ____Placeholder_nvme_ctrl_state } nvme_ctrl_state ;
 int nvme_kick_requeue_lists (struct nvme_ctrl*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
  enum nvme_ctrl_state new_state)
{
 enum nvme_ctrl_state old_state;
 unsigned long flags;
 bool changed = 0;

 spin_lock_irqsave(&ctrl->lock, flags);

 old_state = ctrl->state;
 switch (new_state) {
 case 130:
  switch (old_state) {
  case 129:
  case 128:
  case 133:
   changed = 1;

  default:
   break;
  }
  break;
 case 128:
  switch (old_state) {
  case 129:
  case 130:
   changed = 1;

  default:
   break;
  }
  break;
 case 133:
  switch (old_state) {
  case 129:
  case 128:
   changed = 1;

  default:
   break;
  }
  break;
 case 131:
  switch (old_state) {
  case 130:
  case 128:
  case 133:
   changed = 1;

  default:
   break;
  }
  break;
 case 132:
  switch (old_state) {
  case 131:
   changed = 1;

  default:
   break;
  }
  break;
 default:
  break;
 }

 if (changed) {
  ctrl->state = new_state;
  wake_up_all(&ctrl->state_wq);
 }

 spin_unlock_irqrestore(&ctrl->lock, flags);
 if (changed && ctrl->state == 130)
  nvme_kick_requeue_lists(ctrl);
 return changed;
}
