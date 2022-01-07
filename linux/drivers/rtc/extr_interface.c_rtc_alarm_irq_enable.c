
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {unsigned int enabled; } ;
struct rtc_device {int ops_lock; TYPE_2__ dev; TYPE_1__* ops; TYPE_3__ aie_timer; } ;
struct TYPE_5__ {int (* alarm_irq_enable ) (int ,unsigned int) ;} ;


 int EINVAL ;
 int ENODEV ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtc_timer_enqueue (struct rtc_device*,TYPE_3__*) ;
 int rtc_timer_remove (struct rtc_device*,TYPE_3__*) ;
 int stub1 (int ,unsigned int) ;
 int trace_rtc_alarm_irq_enable (unsigned int,int) ;

int rtc_alarm_irq_enable(struct rtc_device *rtc, unsigned int enabled)
{
 int err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;

 if (rtc->aie_timer.enabled != enabled) {
  if (enabled)
   err = rtc_timer_enqueue(rtc, &rtc->aie_timer);
  else
   rtc_timer_remove(rtc, &rtc->aie_timer);
 }

 if (err)
               ;
 else if (!rtc->ops)
  err = -ENODEV;
 else if (!rtc->ops->alarm_irq_enable)
  err = -EINVAL;
 else
  err = rtc->ops->alarm_irq_enable(rtc->dev.parent, enabled);

 mutex_unlock(&rtc->ops_lock);

 trace_rtc_alarm_irq_enable(enabled, err);
 return err;
}
