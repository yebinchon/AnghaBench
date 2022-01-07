
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mobiveil_pcie {int intx_mask_lock; } ;
struct irq_desc {int dummy; } ;
struct irq_data {int hwirq; int irq; } ;


 int PAB_INTP_AMBA_MISC_ENB ;
 int PAB_INTX_START ;
 int csr_readl (struct mobiveil_pcie*,int ) ;
 int csr_writel (struct mobiveil_pcie*,int,int ) ;
 struct mobiveil_pcie* irq_desc_get_chip_data (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mobiveil_unmask_intx_irq(struct irq_data *data)
{
 struct irq_desc *desc = irq_to_desc(data->irq);
 struct mobiveil_pcie *pcie;
 unsigned long flags;
 u32 shifted_val, mask;

 pcie = irq_desc_get_chip_data(desc);
 mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
 raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
 shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 shifted_val |= mask;
 csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
 raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
}
