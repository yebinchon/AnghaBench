
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {TYPE_1__* domain; } ;
struct advk_pcie {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {struct advk_pcie* host_data; } ;


 int PCIE_ISR1_INTX_ASSERT (int ) ;
 int PCIE_ISR1_MASK_REG ;
 int advk_readl (struct advk_pcie*,int ) ;
 int advk_writel (struct advk_pcie*,int ,int ) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void advk_pcie_irq_mask(struct irq_data *d)
{
 struct advk_pcie *pcie = d->domain->host_data;
 irq_hw_number_t hwirq = irqd_to_hwirq(d);
 u32 mask;

 mask = advk_readl(pcie, PCIE_ISR1_MASK_REG);
 mask |= PCIE_ISR1_INTX_ASSERT(hwirq);
 advk_writel(pcie, mask, PCIE_ISR1_MASK_REG);
}
