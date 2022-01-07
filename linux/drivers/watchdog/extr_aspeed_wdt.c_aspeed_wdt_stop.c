
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct aspeed_wdt {scalar_t__ base; int ctrl; } ;


 scalar_t__ WDT_CTRL ;
 int WDT_CTRL_ENABLE ;
 struct aspeed_wdt* to_aspeed_wdt (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int aspeed_wdt_stop(struct watchdog_device *wdd)
{
 struct aspeed_wdt *wdt = to_aspeed_wdt(wdd);

 wdt->ctrl &= ~WDT_CTRL_ENABLE;
 writel(wdt->ctrl, wdt->base + WDT_CTRL);

 return 0;
}
