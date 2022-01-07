
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int enabled; TYPE_2__ node; scalar_t__ period; } ;
struct rtc_device {int ops_lock; TYPE_1__ aie_timer; int timerqueue; } ;


 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtc_read_time (struct rtc_device*,struct rtc_time*) ;
 scalar_t__ rtc_tm_to_ktime (struct rtc_time) ;
 int rtc_valid_tm (struct rtc_time*) ;
 int timerqueue_add (int *,TYPE_2__*) ;
 int trace_rtc_timer_enqueue (TYPE_1__*) ;

int rtc_initialize_alarm(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
 int err;
 struct rtc_time now;

 err = rtc_valid_tm(&alarm->time);
 if (err != 0)
  return err;

 err = rtc_read_time(rtc, &now);
 if (err)
  return err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;

 rtc->aie_timer.node.expires = rtc_tm_to_ktime(alarm->time);
 rtc->aie_timer.period = 0;


 if (alarm->enabled && (rtc_tm_to_ktime(now) <
    rtc->aie_timer.node.expires)) {
  rtc->aie_timer.enabled = 1;
  timerqueue_add(&rtc->timerqueue, &rtc->aie_timer.node);
  trace_rtc_timer_enqueue(&rtc->aie_timer);
 }
 mutex_unlock(&rtc->ops_lock);
 return err;
}
