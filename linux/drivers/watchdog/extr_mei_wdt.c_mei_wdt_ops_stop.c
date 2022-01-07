
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct mei_wdt {scalar_t__ state; } ;


 scalar_t__ MEI_WDT_IDLE ;
 scalar_t__ MEI_WDT_RUNNING ;
 scalar_t__ MEI_WDT_STOPPING ;
 int mei_wdt_stop (struct mei_wdt*) ;
 struct mei_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int mei_wdt_ops_stop(struct watchdog_device *wdd)
{
 struct mei_wdt *wdt = watchdog_get_drvdata(wdd);
 int ret;

 if (wdt->state != MEI_WDT_RUNNING)
  return 0;

 wdt->state = MEI_WDT_STOPPING;

 ret = mei_wdt_stop(wdt);
 if (ret)
  return ret;

 wdt->state = MEI_WDT_IDLE;

 return 0;
}
