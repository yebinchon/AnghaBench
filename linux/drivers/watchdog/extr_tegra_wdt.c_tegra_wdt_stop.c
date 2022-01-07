
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct tegra_wdt {scalar_t__ tmr_regs; scalar_t__ wdt_regs; } ;


 scalar_t__ TIMER_PTV ;
 scalar_t__ WDT_CMD ;
 int WDT_CMD_DISABLE_COUNTER ;
 scalar_t__ WDT_UNLOCK ;
 int WDT_UNLOCK_PATTERN ;
 struct tegra_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int tegra_wdt_stop(struct watchdog_device *wdd)
{
 struct tegra_wdt *wdt = watchdog_get_drvdata(wdd);

 writel(WDT_UNLOCK_PATTERN, wdt->wdt_regs + WDT_UNLOCK);
 writel(WDT_CMD_DISABLE_COUNTER, wdt->wdt_regs + WDT_CMD);
 writel(0, wdt->tmr_regs + TIMER_PTV);

 return 0;
}
