
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {unsigned int timeout; } ;
struct sama5d4_wdt {int mr; } ;


 int AT91_WDT_MR ;
 int AT91_WDT_SET_WDV (int ) ;
 int AT91_WDT_WDDIS ;
 int AT91_WDT_WDV ;
 int WDT_SEC2TICKS (unsigned int) ;
 struct sama5d4_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 scalar_t__ wdt_enabled ;
 int wdt_write (struct sama5d4_wdt*,int ,int) ;

__attribute__((used)) static int sama5d4_wdt_set_timeout(struct watchdog_device *wdd,
     unsigned int timeout)
{
 struct sama5d4_wdt *wdt = watchdog_get_drvdata(wdd);
 u32 value = WDT_SEC2TICKS(timeout);

 wdt->mr &= ~AT91_WDT_WDV;
 wdt->mr |= AT91_WDT_SET_WDV(value);
 if (wdt_enabled)
  wdt_write(wdt, AT91_WDT_MR, wdt->mr & ~AT91_WDT_WDDIS);

 wdd->timeout = timeout;

 return 0;
}
