
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_soctherm {scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 scalar_t__ THERMCTL_INTR_DISABLE ;
 scalar_t__ THERMCTL_INTR_STATUS ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t soctherm_thermal_isr(int irq, void *dev_id)
{
 struct tegra_soctherm *ts = dev_id;
 u32 r;
 r = readl(ts->regs + THERMCTL_INTR_STATUS);
 writel(r, ts->regs + THERMCTL_INTR_DISABLE);

 return IRQ_WAKE_THREAD;
}
