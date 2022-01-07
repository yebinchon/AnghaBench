
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int pretimeout; } ;


 int pm8916_wdt_configure_timers (struct watchdog_device*) ;

__attribute__((used)) static int pm8916_wdt_set_pretimeout(struct watchdog_device *wdev,
         unsigned int pretimeout)
{
 wdev->pretimeout = pretimeout;

 return pm8916_wdt_configure_timers(wdev);
}
