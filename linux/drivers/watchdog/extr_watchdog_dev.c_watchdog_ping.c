
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {struct watchdog_core_data* wd_data; } ;
struct watchdog_core_data {int last_keepalive; int status; } ;


 int _WDOG_KEEPALIVE ;
 int __watchdog_ping (struct watchdog_device*) ;
 int ktime_get () ;
 int set_bit (int ,int *) ;
 int watchdog_active (struct watchdog_device*) ;
 int watchdog_hw_running (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_ping(struct watchdog_device *wdd)
{
 struct watchdog_core_data *wd_data = wdd->wd_data;

 if (!watchdog_active(wdd) && !watchdog_hw_running(wdd))
  return 0;

 set_bit(_WDOG_KEEPALIVE, &wd_data->status);

 wd_data->last_keepalive = ktime_get();
 return __watchdog_ping(wdd);
}
