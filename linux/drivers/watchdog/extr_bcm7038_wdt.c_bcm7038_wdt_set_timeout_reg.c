
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct bcm7038_watchdog {int rate; scalar_t__ base; } ;


 scalar_t__ WDT_TIMEOUT_REG ;
 struct bcm7038_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm7038_wdt_set_timeout_reg(struct watchdog_device *wdog)
{
 struct bcm7038_watchdog *wdt = watchdog_get_drvdata(wdog);
 u32 timeout;

 timeout = wdt->rate * wdog->timeout;

 writel(timeout, wdt->base + WDT_TIMEOUT_REG);
}
