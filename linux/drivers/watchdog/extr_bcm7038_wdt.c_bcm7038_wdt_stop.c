
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct bcm7038_watchdog {scalar_t__ base; } ;


 scalar_t__ WDT_CMD_REG ;
 int WDT_STOP_1 ;
 int WDT_STOP_2 ;
 struct bcm7038_watchdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int bcm7038_wdt_stop(struct watchdog_device *wdog)
{
 struct bcm7038_watchdog *wdt = watchdog_get_drvdata(wdog);

 writel(WDT_STOP_1, wdt->base + WDT_CMD_REG);
 writel(WDT_STOP_2, wdt->base + WDT_CMD_REG);

 return 0;
}
