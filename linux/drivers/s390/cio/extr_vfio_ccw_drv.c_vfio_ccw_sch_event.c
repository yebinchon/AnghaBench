
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {scalar_t__ state; scalar_t__ mdev; } ;
struct subchannel {int lock; int dev; int todo_work; } ;


 int EAGAIN ;
 int VFIO_CCW_EVENT_NOT_OPER ;
 scalar_t__ VFIO_CCW_STATE_IDLE ;
 scalar_t__ VFIO_CCW_STATE_NOT_OPER ;
 scalar_t__ VFIO_CCW_STATE_STANDBY ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 struct vfio_ccw_private* dev_get_drvdata (int *) ;
 int device_is_registered (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int vfio_ccw_fsm_event (struct vfio_ccw_private*,int ) ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static int vfio_ccw_sch_event(struct subchannel *sch, int process)
{
 struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);
 unsigned long flags;
 int rc = -EAGAIN;

 spin_lock_irqsave(sch->lock, flags);
 if (!device_is_registered(&sch->dev))
  goto out_unlock;

 if (work_pending(&sch->todo_work))
  goto out_unlock;

 if (cio_update_schib(sch)) {
  vfio_ccw_fsm_event(private, VFIO_CCW_EVENT_NOT_OPER);
  rc = 0;
  goto out_unlock;
 }

 private = dev_get_drvdata(&sch->dev);
 if (private->state == VFIO_CCW_STATE_NOT_OPER) {
  private->state = private->mdev ? VFIO_CCW_STATE_IDLE :
     VFIO_CCW_STATE_STANDBY;
 }
 rc = 0;

out_unlock:
 spin_unlock_irqrestore(sch->lock, flags);

 return rc;
}
