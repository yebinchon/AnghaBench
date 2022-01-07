
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct aspeed_wdt {int dummy; } ;


 int WDT_RATE_1MHZ ;
 int aspeed_wdt_enable (struct aspeed_wdt*,int) ;
 struct aspeed_wdt* to_aspeed_wdt (struct watchdog_device*) ;

__attribute__((used)) static int aspeed_wdt_start(struct watchdog_device *wdd)
{
 struct aspeed_wdt *wdt = to_aspeed_wdt(wdd);

 aspeed_wdt_enable(wdt, wdd->timeout * WDT_RATE_1MHZ);

 return 0;
}
