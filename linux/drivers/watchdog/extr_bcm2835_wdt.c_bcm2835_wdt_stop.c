
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct bcm2835_wdt {scalar_t__ base; } ;


 int PM_PASSWORD ;
 scalar_t__ PM_RSTC ;
 int PM_RSTC_RESET ;
 struct bcm2835_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int bcm2835_wdt_stop(struct watchdog_device *wdog)
{
 struct bcm2835_wdt *wdt = watchdog_get_drvdata(wdog);

 writel_relaxed(PM_PASSWORD | PM_RSTC_RESET, wdt->base + PM_RSTC);
 return 0;
}
