
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int max_hw_heartbeat_ms; unsigned int timeout; } ;
struct ls1x_wdt_drvdata {unsigned int clk_rate; scalar_t__ base; } ;


 scalar_t__ WDT_TIMER ;
 unsigned int min (unsigned int,unsigned int) ;
 struct ls1x_wdt_drvdata* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int ls1x_wdt_set_timeout(struct watchdog_device *wdt_dev,
    unsigned int timeout)
{
 struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
 unsigned int max_hw_heartbeat = wdt_dev->max_hw_heartbeat_ms / 1000;
 unsigned int counts;

 wdt_dev->timeout = timeout;

 counts = drvdata->clk_rate * min(timeout, max_hw_heartbeat);
 writel(counts, drvdata->base + WDT_TIMER);

 return 0;
}
