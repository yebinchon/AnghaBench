
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ccw_device {TYPE_1__* private; } ;
struct TYPE_7__ {scalar_t__ expires; } ;
struct TYPE_6__ {TYPE_2__ timer; } ;


 int add_timer (TYPE_2__*) ;
 int del_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 scalar_t__ mod_timer (TYPE_2__*,scalar_t__) ;
 scalar_t__ timer_pending (TYPE_2__*) ;

void
ccw_device_set_timeout(struct ccw_device *cdev, int expires)
{
 if (expires == 0) {
  del_timer(&cdev->private->timer);
  return;
 }
 if (timer_pending(&cdev->private->timer)) {
  if (mod_timer(&cdev->private->timer, jiffies + expires))
   return;
 }
 cdev->private->timer.expires = jiffies + expires;
 add_timer(&cdev->private->timer);
}
