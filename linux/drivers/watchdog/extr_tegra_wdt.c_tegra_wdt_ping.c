
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct tegra_wdt {scalar_t__ wdt_regs; } ;


 scalar_t__ WDT_CMD ;
 int WDT_CMD_START_COUNTER ;
 struct tegra_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int tegra_wdt_ping(struct watchdog_device *wdd)
{
 struct tegra_wdt *wdt = watchdog_get_drvdata(wdd);

 writel(WDT_CMD_START_COUNTER, wdt->wdt_regs + WDT_CMD);

 return 0;
}
