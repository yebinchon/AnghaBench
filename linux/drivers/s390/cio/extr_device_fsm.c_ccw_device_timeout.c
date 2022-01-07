
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ccw_device_private {struct ccw_device* cdev; } ;
struct ccw_device {int ccwlock; } ;


 int DEV_EVENT_TIMEOUT ;
 int ccw_timeout_log (struct ccw_device*) ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 struct ccw_device_private* from_timer (int ,struct timer_list*,int ) ;
 struct ccw_device_private* priv ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ timeout_log_enabled ;
 int timer ;

void
ccw_device_timeout(struct timer_list *t)
{
 struct ccw_device_private *priv = from_timer(priv, t, timer);
 struct ccw_device *cdev = priv->cdev;

 spin_lock_irq(cdev->ccwlock);
 if (timeout_log_enabled)
  ccw_timeout_log(cdev);
 dev_fsm_event(cdev, DEV_EVENT_TIMEOUT);
 spin_unlock_irq(cdev->ccwlock);
}
