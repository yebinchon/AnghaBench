
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct dw_wdt {scalar_t__ regs; } ;


 int DW_WDT_MAX_TOP ;
 scalar_t__ WDOG_TIMEOUT_RANGE_REG_OFFSET ;
 int WDOG_TIMEOUT_RANGE_TOPINIT_SHIFT ;
 unsigned int dw_wdt_top_in_seconds (struct dw_wdt*,int) ;
 struct dw_wdt* to_dw_wdt (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int dw_wdt_set_timeout(struct watchdog_device *wdd, unsigned int top_s)
{
 struct dw_wdt *dw_wdt = to_dw_wdt(wdd);
 int i, top_val = DW_WDT_MAX_TOP;





 for (i = 0; i <= DW_WDT_MAX_TOP; ++i)
  if (dw_wdt_top_in_seconds(dw_wdt, i) >= top_s) {
   top_val = i;
   break;
  }







 writel(top_val | top_val << WDOG_TIMEOUT_RANGE_TOPINIT_SHIFT,
        dw_wdt->regs + WDOG_TIMEOUT_RANGE_REG_OFFSET);

 wdd->timeout = dw_wdt_top_in_seconds(dw_wdt, top_val);

 return 0;
}
