
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccw_device {TYPE_2__* drv; int ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {scalar_t__ set_offline; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int CDEV_TODO_UNREG_EVAL ;
 scalar_t__ DEV_STATE_DISCONNECTED ;
 int EINVAL ;
 int ccw_device_sched_todo (struct ccw_device*,int ) ;
 int ccw_device_set_offline (struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int online_store_handle_offline(struct ccw_device *cdev)
{
 if (cdev->private->state == DEV_STATE_DISCONNECTED) {
  spin_lock_irq(cdev->ccwlock);
  ccw_device_sched_todo(cdev, CDEV_TODO_UNREG_EVAL);
  spin_unlock_irq(cdev->ccwlock);
  return 0;
 }
 if (cdev->drv && cdev->drv->set_offline)
  return ccw_device_set_offline(cdev);
 return -EINVAL;
}
