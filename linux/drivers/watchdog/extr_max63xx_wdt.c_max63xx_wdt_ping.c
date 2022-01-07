
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct max63xx_wdt {int (* ping ) (struct max63xx_wdt*) ;} ;


 int stub1 (struct max63xx_wdt*) ;
 struct max63xx_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int max63xx_wdt_ping(struct watchdog_device *wdd)
{
 struct max63xx_wdt *wdt = watchdog_get_drvdata(wdd);

 wdt->ping(wdt);
 return 0;
}
