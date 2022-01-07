
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct aspeed_wdt {int ctrl; } ;


 int WDT_CTRL_BOOT_SECONDARY ;
 int WDT_RATE_1MHZ ;
 int aspeed_wdt_enable (struct aspeed_wdt*,int) ;
 int mdelay (int) ;
 struct aspeed_wdt* to_aspeed_wdt (struct watchdog_device*) ;

__attribute__((used)) static int aspeed_wdt_restart(struct watchdog_device *wdd,
         unsigned long action, void *data)
{
 struct aspeed_wdt *wdt = to_aspeed_wdt(wdd);

 wdt->ctrl &= ~WDT_CTRL_BOOT_SECONDARY;
 aspeed_wdt_enable(wdt, 128 * WDT_RATE_1MHZ / 1000);

 mdelay(1000);

 return 0;
}
