
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct dw_wdt {scalar_t__ regs; } ;


 int WDOG_COUNTER_RESTART_KICK_VALUE ;
 scalar_t__ WDOG_COUNTER_RESTART_REG_OFFSET ;
 struct dw_wdt* to_dw_wdt (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int dw_wdt_ping(struct watchdog_device *wdd)
{
 struct dw_wdt *dw_wdt = to_dw_wdt(wdd);

 writel(WDOG_COUNTER_RESTART_KICK_VALUE, dw_wdt->regs +
        WDOG_COUNTER_RESTART_REG_OFFSET);

 return 0;
}
