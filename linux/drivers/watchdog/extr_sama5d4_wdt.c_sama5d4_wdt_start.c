
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct sama5d4_wdt {int mr; } ;


 int AT91_WDT_MR ;
 int AT91_WDT_WDDIS ;
 struct sama5d4_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int wdt_write (struct sama5d4_wdt*,int ,int ) ;

__attribute__((used)) static int sama5d4_wdt_start(struct watchdog_device *wdd)
{
 struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);

 wdt->mr &= ~AT91_WDT_WDDIS;
 wdt_write(wdt, AT91_WDT_MR, wdt->mr);

 return 0;
}
