
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct copy_block_struct {int ret; int wait; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ state; struct copy_block_struct* cmb_wait; int cmb; } ;


 int CMF_PENDING ;
 scalar_t__ DEV_STATE_CMFUPDATE ;
 scalar_t__ DEV_STATE_ONLINE ;
 int EBUSY ;
 int ENODEV ;
 int ERESTARTSYS ;
 int cmf_copy_block (struct ccw_device*) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int cmf_cmb_copy_wait(struct ccw_device *cdev)
{
 struct copy_block_struct copy_block;
 int ret = -ENODEV;

 spin_lock_irq(cdev->ccwlock);
 if (!cdev->private->cmb)
  goto out;

 ret = cmf_copy_block(cdev);
 if (ret != -EBUSY)
  goto out;

 if (cdev->private->state != DEV_STATE_ONLINE)
  goto out;

 init_waitqueue_head(&copy_block.wait);
 copy_block.ret = CMF_PENDING;

 cdev->private->state = DEV_STATE_CMFUPDATE;
 cdev->private->cmb_wait = &copy_block;
 spin_unlock_irq(cdev->ccwlock);

 ret = wait_event_interruptible(copy_block.wait,
           copy_block.ret != CMF_PENDING);
 spin_lock_irq(cdev->ccwlock);
 if (ret) {
  if (copy_block.ret == CMF_PENDING) {
   copy_block.ret = -ERESTARTSYS;
   if (cdev->private->state == DEV_STATE_CMFUPDATE)
    cdev->private->state = DEV_STATE_ONLINE;
  }
 }
 cdev->private->cmb_wait = ((void*)0);
 ret = copy_block.ret;
out:
 spin_unlock_irq(cdev->ccwlock);
 return ret;
}
