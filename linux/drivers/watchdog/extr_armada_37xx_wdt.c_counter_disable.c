
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada_37xx_watchdog {scalar_t__ reg; } ;


 scalar_t__ CNTR_CTRL (int) ;
 int CNTR_CTRL_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void counter_disable(struct armada_37xx_watchdog *dev, int id)
{
 u32 reg;

 reg = readl(dev->reg + CNTR_CTRL(id));
 reg &= ~CNTR_CTRL_ENABLE;
 writel(reg, dev->reg + CNTR_CTRL(id));
}
