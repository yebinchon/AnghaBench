
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {unsigned int timeout; int max_hw_heartbeat_ms; } ;
struct aspeed_wdt {scalar_t__ base; } ;


 int WDT_RATE_1MHZ ;
 scalar_t__ WDT_RELOAD_VALUE ;
 scalar_t__ WDT_RESTART ;
 int WDT_RESTART_MAGIC ;
 int min (unsigned int,int) ;
 struct aspeed_wdt* to_aspeed_wdt (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int aspeed_wdt_set_timeout(struct watchdog_device *wdd,
      unsigned int timeout)
{
 struct aspeed_wdt *wdt = to_aspeed_wdt(wdd);
 u32 actual;

 wdd->timeout = timeout;

 actual = min(timeout, wdd->max_hw_heartbeat_ms * 1000);

 writel(actual * WDT_RATE_1MHZ, wdt->base + WDT_RELOAD_VALUE);
 writel(WDT_RESTART_MAGIC, wdt->base + WDT_RESTART);

 return 0;
}
