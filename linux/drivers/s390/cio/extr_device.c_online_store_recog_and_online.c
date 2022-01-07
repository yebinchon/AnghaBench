
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccw_device {TYPE_1__* drv; TYPE_3__* private; int ccwlock; } ;
struct TYPE_5__ {int recog_done; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ flags; int wait_q; } ;
struct TYPE_4__ {scalar_t__ set_online; } ;


 scalar_t__ DEV_STATE_BOXED ;
 scalar_t__ DEV_STATE_OFFLINE ;
 int EAGAIN ;
 int EINVAL ;
 int ccw_device_recognition (struct ccw_device*) ;
 int ccw_device_set_online (struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int online_store_recog_and_online(struct ccw_device *cdev)
{

 if (cdev->private->state == DEV_STATE_BOXED) {
  spin_lock_irq(cdev->ccwlock);
  ccw_device_recognition(cdev);
  spin_unlock_irq(cdev->ccwlock);
  wait_event(cdev->private->wait_q,
      cdev->private->flags.recog_done);
  if (cdev->private->state != DEV_STATE_OFFLINE)

   return -EAGAIN;
 }
 if (cdev->drv && cdev->drv->set_online)
  return ccw_device_set_online(cdev);
 return -EINVAL;
}
