
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct tegra_wdt {scalar_t__ wdt_regs; } ;


 scalar_t__ WDT_STS ;
 int WDT_STS_COUNT_MASK ;
 int WDT_STS_COUNT_SHIFT ;
 int WDT_STS_EXP_MASK ;
 int WDT_STS_EXP_SHIFT ;
 int readl (scalar_t__) ;
 struct tegra_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int tegra_wdt_get_timeleft(struct watchdog_device *wdd)
{
 struct tegra_wdt *wdt = watchdog_get_drvdata(wdd);
 u32 val;
 int count;
 int exp;

 val = readl(wdt->wdt_regs + WDT_STS);


 count = (val >> WDT_STS_COUNT_SHIFT) & WDT_STS_COUNT_MASK;


 exp = (val >> WDT_STS_EXP_SHIFT) & WDT_STS_EXP_MASK;





 return (((3 - exp) * wdd->timeout) + count) / 4;
}
