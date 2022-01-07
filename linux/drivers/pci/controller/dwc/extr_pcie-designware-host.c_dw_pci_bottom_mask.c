
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int lock; int * irq_mask; } ;
struct irq_data {unsigned int hwirq; } ;


 int BIT (unsigned int) ;
 unsigned int MAX_MSI_IRQS_PER_CTRL ;
 unsigned int MSI_REG_CTRL_BLOCK_SIZE ;
 scalar_t__ PCIE_MSI_INTR0_MASK ;
 int dw_pcie_wr_own_conf (struct pcie_port*,scalar_t__,int,int ) ;
 struct pcie_port* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dw_pci_bottom_mask(struct irq_data *d)
{
 struct pcie_port *pp = irq_data_get_irq_chip_data(d);
 unsigned int res, bit, ctrl;
 unsigned long flags;

 raw_spin_lock_irqsave(&pp->lock, flags);

 ctrl = d->hwirq / MAX_MSI_IRQS_PER_CTRL;
 res = ctrl * MSI_REG_CTRL_BLOCK_SIZE;
 bit = d->hwirq % MAX_MSI_IRQS_PER_CTRL;

 pp->irq_mask[ctrl] |= BIT(bit);
 dw_pcie_wr_own_conf(pp, PCIE_MSI_INTR0_MASK + res, 4,
       pp->irq_mask[ctrl]);

 raw_spin_unlock_irqrestore(&pp->lock, flags);
}
