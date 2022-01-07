
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct charger_manager {int dev; int fullbatt_vchk_work; scalar_t__ fullbatt_vchk_jiffies_at; } ;
typedef int ktime_t ;


 unsigned long CM_JIFFIES_SMALL ;
 int _cm_monitor (struct charger_manager*) ;
 int alarm_cancel (int ) ;
 int alarm_expires_remaining (int ) ;
 unsigned long cm_suspend_duration_ms ;
 int cm_suspended ;
 int cm_timer ;
 int cm_timer_set ;
 int cm_wq ;
 struct charger_manager* dev_get_drvdata (struct device*) ;
 int device_set_wakeup_capable (int ,int) ;
 unsigned long jiffies ;
 unsigned long jiffies_to_msecs (unsigned long) ;
 scalar_t__ ktime_to_ms (int ) ;
 int msecs_to_jiffies (unsigned long) ;
 int queue_delayed_work (int ,int *,int ) ;
 int schedule_work (int *) ;
 int setup_polling ;
 scalar_t__ time_after_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static void cm_suspend_complete(struct device *dev)
{
 struct charger_manager *cm = dev_get_drvdata(dev);

 if (cm_suspended)
  cm_suspended = 0;

 if (cm_timer_set) {
  ktime_t remain;

  alarm_cancel(cm_timer);
  cm_timer_set = 0;
  remain = alarm_expires_remaining(cm_timer);
  cm_suspend_duration_ms -= ktime_to_ms(remain);
  schedule_work(&setup_polling);
 }

 _cm_monitor(cm);


 if (cm->fullbatt_vchk_jiffies_at) {
  unsigned long delay = 0;
  unsigned long now = jiffies + CM_JIFFIES_SMALL;

  if (time_after_eq(now, cm->fullbatt_vchk_jiffies_at)) {
   delay = (unsigned long)((long)now
    - (long)(cm->fullbatt_vchk_jiffies_at));
   delay = jiffies_to_msecs(delay);
  } else {
   delay = 0;
  }





  if (delay > cm_suspend_duration_ms)
   delay -= cm_suspend_duration_ms;
  else
   delay = 0;

  queue_delayed_work(cm_wq, &cm->fullbatt_vchk_work,
       msecs_to_jiffies(delay));
 }
 device_set_wakeup_capable(cm->dev, 0);
}
