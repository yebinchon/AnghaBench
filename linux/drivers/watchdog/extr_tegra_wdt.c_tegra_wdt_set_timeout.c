
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int tegra_wdt_start (struct watchdog_device*) ;
 int tegra_wdt_stop (struct watchdog_device*) ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;

__attribute__((used)) static int tegra_wdt_set_timeout(struct watchdog_device *wdd,
     unsigned int timeout)
{
 wdd->timeout = timeout;

 if (watchdog_active(wdd)) {
  tegra_wdt_stop(wdd);
  return tegra_wdt_start(wdd);
 }

 return 0;
}
