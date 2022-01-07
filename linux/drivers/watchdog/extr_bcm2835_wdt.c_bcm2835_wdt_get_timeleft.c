
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct watchdog_device {int dummy; } ;
struct bcm2835_wdt {scalar_t__ base; } ;


 scalar_t__ PM_WDOG ;
 int PM_WDOG_TIME_SET ;
 unsigned int WDOG_TICKS_TO_SECS (int) ;
 int readl_relaxed (scalar_t__) ;
 struct bcm2835_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int bcm2835_wdt_get_timeleft(struct watchdog_device *wdog)
{
 struct bcm2835_wdt *wdt = watchdog_get_drvdata(wdog);

 uint32_t ret = readl_relaxed(wdt->base + PM_WDOG);
 return WDOG_TICKS_TO_SECS(ret & PM_WDOG_TIME_SET);
}
