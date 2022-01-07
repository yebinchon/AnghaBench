
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct mei_wdt {int timeout; int state; } ;


 int MEI_WDT_START ;
 struct mei_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int mei_wdt_ops_start(struct watchdog_device *wdd)
{
 struct mei_wdt *wdt = watchdog_get_drvdata(wdd);

 wdt->state = MEI_WDT_START;
 wdd->timeout = wdt->timeout;
 return 0;
}
