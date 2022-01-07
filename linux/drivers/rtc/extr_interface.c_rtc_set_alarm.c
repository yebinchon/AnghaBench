
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct TYPE_6__ {int expires; } ;
struct TYPE_7__ {scalar_t__ period; TYPE_2__ node; scalar_t__ enabled; } ;
struct rtc_device {int ops_lock; TYPE_3__ aie_timer; TYPE_1__* ops; } ;
struct TYPE_5__ {int set_alarm; } ;


 int EINVAL ;
 int ENODEV ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtc_timer_enqueue (struct rtc_device*,TYPE_3__*) ;
 int rtc_timer_remove (struct rtc_device*,TYPE_3__*) ;
 int rtc_tm_to_ktime (int ) ;
 int rtc_valid_range (struct rtc_device*,int *) ;
 int rtc_valid_tm (int *) ;

int rtc_set_alarm(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
 int err;

 if (!rtc->ops)
  return -ENODEV;
 else if (!rtc->ops->set_alarm)
  return -EINVAL;

 err = rtc_valid_tm(&alarm->time);
 if (err != 0)
  return err;

 err = rtc_valid_range(rtc, &alarm->time);
 if (err)
  return err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;
 if (rtc->aie_timer.enabled)
  rtc_timer_remove(rtc, &rtc->aie_timer);

 rtc->aie_timer.node.expires = rtc_tm_to_ktime(alarm->time);
 rtc->aie_timer.period = 0;
 if (alarm->enabled)
  err = rtc_timer_enqueue(rtc, &rtc->aie_timer);

 mutex_unlock(&rtc->ops_lock);

 return err;
}
