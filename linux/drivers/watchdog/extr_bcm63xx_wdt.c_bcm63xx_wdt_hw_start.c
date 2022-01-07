
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ WDT_CTL_REG ;
 scalar_t__ WDT_DEFVAL_REG ;
 int WDT_START_1 ;
 int WDT_START_2 ;
 TYPE_1__ bcm63xx_wdt_device ;
 int bcm_writel (int,scalar_t__) ;

__attribute__((used)) static void bcm63xx_wdt_hw_start(void)
{
 bcm_writel(0xfffffffe, bcm63xx_wdt_device.regs + WDT_DEFVAL_REG);
 bcm_writel(WDT_START_1, bcm63xx_wdt_device.regs + WDT_CTL_REG);
 bcm_writel(WDT_START_2, bcm63xx_wdt_device.regs + WDT_CTL_REG);
}
