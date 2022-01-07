
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada_37xx_watchdog {scalar_t__ reg; int cpu_misc; } ;


 scalar_t__ CNTR_CTRL (int ) ;
 int CNTR_CTRL_ACTIVE ;
 int CNTR_ID_WDOG ;
 int WDT_TIMER_SELECT ;
 int WDT_TIMER_SELECT_MASK ;
 int WDT_TIMER_SELECT_VAL ;
 int readl (scalar_t__) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool armada_37xx_wdt_is_running(struct armada_37xx_watchdog *dev)
{
 u32 reg;

 regmap_read(dev->cpu_misc, WDT_TIMER_SELECT, &reg);
 if ((reg & WDT_TIMER_SELECT_MASK) != WDT_TIMER_SELECT_VAL)
  return 0;

 reg = readl(dev->reg + CNTR_CTRL(CNTR_ID_WDOG));
 return !!(reg & CNTR_CTRL_ACTIVE);
}
