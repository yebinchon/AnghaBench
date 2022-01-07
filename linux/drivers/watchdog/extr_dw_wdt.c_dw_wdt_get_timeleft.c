
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct dw_wdt {unsigned int rate; scalar_t__ regs; } ;


 scalar_t__ WDOG_CURRENT_COUNT_REG_OFFSET ;
 unsigned int readl (scalar_t__) ;
 struct dw_wdt* to_dw_wdt (struct watchdog_device*) ;

__attribute__((used)) static unsigned int dw_wdt_get_timeleft(struct watchdog_device *wdd)
{
 struct dw_wdt *dw_wdt = to_dw_wdt(wdd);

 return readl(dw_wdt->regs + WDOG_CURRENT_COUNT_REG_OFFSET) /
  dw_wdt->rate;
}
