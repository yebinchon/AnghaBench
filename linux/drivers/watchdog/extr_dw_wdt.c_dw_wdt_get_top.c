
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_wdt {scalar_t__ regs; } ;


 scalar_t__ WDOG_TIMEOUT_RANGE_REG_OFFSET ;
 int dw_wdt_top_in_seconds (struct dw_wdt*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int dw_wdt_get_top(struct dw_wdt *dw_wdt)
{
 int top = readl(dw_wdt->regs + WDOG_TIMEOUT_RANGE_REG_OFFSET) & 0xF;

 return dw_wdt_top_in_seconds(dw_wdt, top);
}
