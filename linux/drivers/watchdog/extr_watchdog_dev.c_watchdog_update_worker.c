
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {struct watchdog_core_data* wd_data; } ;
struct watchdog_core_data {int timer; } ;
typedef scalar_t__ ktime_t ;


 int HRTIMER_MODE_REL ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,scalar_t__,int ) ;
 scalar_t__ watchdog_need_worker (struct watchdog_device*) ;
 scalar_t__ watchdog_next_keepalive (struct watchdog_device*) ;

__attribute__((used)) static inline void watchdog_update_worker(struct watchdog_device *wdd)
{
 struct watchdog_core_data *wd_data = wdd->wd_data;

 if (watchdog_need_worker(wdd)) {
  ktime_t t = watchdog_next_keepalive(wdd);

  if (t > 0)
   hrtimer_start(&wd_data->timer, t, HRTIMER_MODE_REL);
 } else {
  hrtimer_cancel(&wd_data->timer);
 }
}
