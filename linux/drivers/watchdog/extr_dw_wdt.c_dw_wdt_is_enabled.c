
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_wdt {scalar_t__ regs; } ;


 scalar_t__ WDOG_CONTROL_REG_OFFSET ;
 int WDOG_CONTROL_REG_WDT_EN_MASK ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int dw_wdt_is_enabled(struct dw_wdt *dw_wdt)
{
 return readl(dw_wdt->regs + WDOG_CONTROL_REG_OFFSET) &
  WDOG_CONTROL_REG_WDT_EN_MASK;
}
