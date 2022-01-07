
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_pearl_state {int irq_lock; int pcie_reg_base; int pcie_irq_mask; } ;


 int PCIE_HDP_INT_EN (int ) ;
 int PCIE_HDP_INT_RX_BITS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void qtnf_en_rxdone_irq(struct qtnf_pcie_pearl_state *ps)
{
 unsigned long flags;

 spin_lock_irqsave(&ps->irq_lock, flags);
 ps->pcie_irq_mask |= PCIE_HDP_INT_RX_BITS;
 writel(ps->pcie_irq_mask, PCIE_HDP_INT_EN(ps->pcie_reg_base));
 spin_unlock_irqrestore(&ps->irq_lock, flags);
}
