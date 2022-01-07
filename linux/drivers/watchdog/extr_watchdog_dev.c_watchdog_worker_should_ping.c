
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct watchdog_core_data {struct watchdog_device* wdd; } ;


 scalar_t__ watchdog_active (struct watchdog_device*) ;
 scalar_t__ watchdog_hw_running (struct watchdog_device*) ;
 int watchdog_past_open_deadline (struct watchdog_core_data*) ;

__attribute__((used)) static bool watchdog_worker_should_ping(struct watchdog_core_data *wd_data)
{
 struct watchdog_device *wdd = wd_data->wdd;

 if (!wdd)
  return 0;

 if (watchdog_active(wdd))
  return 1;

 return watchdog_hw_running(wdd) && !watchdog_past_open_deadline(wd_data);
}
