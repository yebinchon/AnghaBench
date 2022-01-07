
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tango_pcie {int base; int used_msi_lock; } ;
struct irq_data {int hwirq; struct tango_pcie* chip_data; } ;


 int BIT (int) ;
 int SMP8759_ENABLE ;
 int readl_relaxed (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,int) ;

__attribute__((used)) static void update_msi_enable(struct irq_data *d, bool unmask)
{
 unsigned long flags;
 struct tango_pcie *pcie = d->chip_data;
 u32 offset = (d->hwirq / 32) * 4;
 u32 bit = BIT(d->hwirq % 32);
 u32 val;

 spin_lock_irqsave(&pcie->used_msi_lock, flags);
 val = readl_relaxed(pcie->base + SMP8759_ENABLE + offset);
 val = unmask ? val | bit : val & ~bit;
 writel_relaxed(val, pcie->base + SMP8759_ENABLE + offset);
 spin_unlock_irqrestore(&pcie->used_msi_lock, flags);
}
