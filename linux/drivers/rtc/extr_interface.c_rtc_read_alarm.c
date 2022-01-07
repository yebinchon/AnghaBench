
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtc_wkalrm {int time; int enabled; } ;
struct TYPE_4__ {int expires; } ;
struct TYPE_5__ {TYPE_1__ node; int enabled; } ;
struct rtc_device {int ops_lock; TYPE_2__ aie_timer; TYPE_3__* ops; } ;
struct TYPE_6__ {int read_alarm; } ;


 int EINVAL ;
 int ENODEV ;
 int memset (struct rtc_wkalrm*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtc_ktime_to_tm (int ) ;
 int rtc_tm_to_time64 (int *) ;
 int trace_rtc_read_alarm (int ,int) ;

int rtc_read_alarm(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
 int err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;
 if (!rtc->ops) {
  err = -ENODEV;
 } else if (!rtc->ops->read_alarm) {
  err = -EINVAL;
 } else {
  memset(alarm, 0, sizeof(struct rtc_wkalrm));
  alarm->enabled = rtc->aie_timer.enabled;
  alarm->time = rtc_ktime_to_tm(rtc->aie_timer.node.expires);
 }
 mutex_unlock(&rtc->ops_lock);

 trace_rtc_read_alarm(rtc_tm_to_time64(&alarm->time), err);
 return err;
}
