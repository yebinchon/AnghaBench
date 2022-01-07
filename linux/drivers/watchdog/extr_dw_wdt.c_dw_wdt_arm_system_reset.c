
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_wdt {scalar_t__ regs; } ;


 scalar_t__ WDOG_CONTROL_REG_OFFSET ;
 int WDOG_CONTROL_REG_RESP_MODE_MASK ;
 int WDOG_CONTROL_REG_WDT_EN_MASK ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void dw_wdt_arm_system_reset(struct dw_wdt *dw_wdt)
{
 u32 val = readl(dw_wdt->regs + WDOG_CONTROL_REG_OFFSET);


 val &= ~WDOG_CONTROL_REG_RESP_MODE_MASK;

 val |= WDOG_CONTROL_REG_WDT_EN_MASK;
 writel(val, dw_wdt->regs + WDOG_CONTROL_REG_OFFSET);
}
