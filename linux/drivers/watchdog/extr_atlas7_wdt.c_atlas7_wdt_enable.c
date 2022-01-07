
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct atlas7_wdog {scalar_t__ base; } ;


 scalar_t__ ATLAS7_WDT_CNT_CTRL ;
 int ATLAS7_WDT_CNT_EN ;
 scalar_t__ ATLAS7_WDT_EN ;
 int atlas7_wdt_ping (struct watchdog_device*) ;
 int readl (scalar_t__) ;
 struct atlas7_wdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int atlas7_wdt_enable(struct watchdog_device *wdd)
{
 struct atlas7_wdog *wdt = watchdog_get_drvdata(wdd);

 atlas7_wdt_ping(wdd);

 writel(readl(wdt->base + ATLAS7_WDT_CNT_CTRL) | ATLAS7_WDT_CNT_EN,
       wdt->base + ATLAS7_WDT_CNT_CTRL);
 writel(1, wdt->base + ATLAS7_WDT_EN);

 return 0;
}
