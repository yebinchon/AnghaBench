
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct aspeed_wdt {scalar_t__ base; } ;


 scalar_t__ WDT_RESTART ;
 int WDT_RESTART_MAGIC ;
 struct aspeed_wdt* to_aspeed_wdt (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int aspeed_wdt_ping(struct watchdog_device *wdd)
{
 struct aspeed_wdt *wdt = to_aspeed_wdt(wdd);

 writel(WDT_RESTART_MAGIC, wdt->base + WDT_RESTART);

 return 0;
}
