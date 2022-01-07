
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nwl_pcie {int leg_mask_lock; } ;
struct irq_desc {int dummy; } ;
struct irq_data {int hwirq; int irq; } ;


 int MSGF_LEG_MASK ;
 struct nwl_pcie* irq_desc_get_chip_data (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (int ) ;
 int nwl_bridge_readl (struct nwl_pcie*,int ) ;
 int nwl_bridge_writel (struct nwl_pcie*,int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nwl_unmask_leg_irq(struct irq_data *data)
{
 struct irq_desc *desc = irq_to_desc(data->irq);
 struct nwl_pcie *pcie;
 unsigned long flags;
 u32 mask;
 u32 val;

 pcie = irq_desc_get_chip_data(desc);
 mask = 1 << (data->hwirq - 1);
 raw_spin_lock_irqsave(&pcie->leg_mask_lock, flags);
 val = nwl_bridge_readl(pcie, MSGF_LEG_MASK);
 nwl_bridge_writel(pcie, (val | mask), MSGF_LEG_MASK);
 raw_spin_unlock_irqrestore(&pcie->leg_mask_lock, flags);
}
