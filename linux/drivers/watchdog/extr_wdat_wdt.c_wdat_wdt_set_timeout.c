
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdat_wdt {unsigned int period; } ;
struct watchdog_device {unsigned int timeout; } ;


 int ACPI_WDAT_SET_COUNTDOWN ;
 struct wdat_wdt* to_wdat_wdt (struct watchdog_device*) ;
 int wdat_wdt_run_action (struct wdat_wdt*,int ,unsigned int,int *) ;

__attribute__((used)) static int wdat_wdt_set_timeout(struct watchdog_device *wdd,
    unsigned int timeout)
{
 struct wdat_wdt *wdat = to_wdat_wdt(wdd);
 unsigned int periods;
 int ret;

 periods = timeout * 1000 / wdat->period;
 ret = wdat_wdt_run_action(wdat, ACPI_WDAT_SET_COUNTDOWN, periods, ((void*)0));
 if (!ret)
  wdd->timeout = timeout;
 return ret;
}
