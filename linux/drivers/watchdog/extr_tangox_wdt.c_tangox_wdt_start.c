
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct tangox_wdt_device {int clk_rate; scalar_t__ base; } ;


 scalar_t__ WD_COUNTER ;
 struct tangox_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int tangox_wdt_start(struct watchdog_device *wdt)
{
 struct tangox_wdt_device *dev = watchdog_get_drvdata(wdt);
 u32 ticks;

 ticks = 1 + wdt->timeout * dev->clk_rate;
 writel(ticks, dev->base + WD_COUNTER);

 return 0;
}
