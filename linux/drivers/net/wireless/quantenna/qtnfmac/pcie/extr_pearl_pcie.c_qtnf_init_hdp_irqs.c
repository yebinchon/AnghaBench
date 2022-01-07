
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_pearl_state {int pcie_irq_mask; int irq_lock; } ;


 int PCIE_HDP_INT_RX_BITS ;
 int PCIE_HDP_INT_TX_BITS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void qtnf_init_hdp_irqs(struct qtnf_pcie_pearl_state *ps)
{
 unsigned long flags;

 spin_lock_irqsave(&ps->irq_lock, flags);
 ps->pcie_irq_mask = (PCIE_HDP_INT_RX_BITS | PCIE_HDP_INT_TX_BITS);
 spin_unlock_irqrestore(&ps->irq_lock, flags);
}
