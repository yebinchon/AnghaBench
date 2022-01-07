
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct tegra_wdt {scalar_t__ wdt_regs; scalar_t__ tmr_regs; } ;


 int TIMER_EN ;
 int TIMER_PERIODIC ;
 scalar_t__ TIMER_PTV ;
 scalar_t__ WDT_CFG ;
 int WDT_CFG_PERIOD_SHIFT ;
 int WDT_CFG_PMC2CAR_RST_EN ;
 scalar_t__ WDT_CMD ;
 int WDT_CMD_START_COUNTER ;
 int WDT_TIMER_ID ;
 struct tegra_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int tegra_wdt_start(struct watchdog_device *wdd)
{
 struct tegra_wdt *wdt = watchdog_get_drvdata(wdd);
 u32 val;







 val = 1000000ul / 4;
 val |= (TIMER_EN | TIMER_PERIODIC);
 writel(val, wdt->tmr_regs + TIMER_PTV);
 val = WDT_TIMER_ID |
       (wdd->timeout << WDT_CFG_PERIOD_SHIFT) |
       WDT_CFG_PMC2CAR_RST_EN;
 writel(val, wdt->wdt_regs + WDT_CFG);

 writel(WDT_CMD_START_COUNTER, wdt->wdt_regs + WDT_CMD);

 return 0;
}
