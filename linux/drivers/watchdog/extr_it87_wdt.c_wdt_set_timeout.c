
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 unsigned int max_units ;
 scalar_t__ watchdog_hw_running (struct watchdog_device*) ;
 unsigned int wdt_round_time (unsigned int) ;
 int wdt_update_timeout (unsigned int) ;

__attribute__((used)) static int wdt_set_timeout(struct watchdog_device *wdd, unsigned int t)
{
 int ret = 0;

 if (t > max_units)
  t = wdt_round_time(t);

 wdd->timeout = t;

 if (watchdog_hw_running(wdd))
  ret = wdt_update_timeout(t);

 return ret;
}
