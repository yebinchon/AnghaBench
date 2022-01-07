
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int lock; int msi_irq_in_use; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;


 int bitmap_release_region (int ,int ,int ) ;
 struct pcie_port* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int order_base_2 (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dw_pcie_irq_domain_free(struct irq_domain *domain,
        unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct pcie_port *pp = irq_data_get_irq_chip_data(d);
 unsigned long flags;

 raw_spin_lock_irqsave(&pp->lock, flags);

 bitmap_release_region(pp->msi_irq_in_use, d->hwirq,
         order_base_2(nr_irqs));

 raw_spin_unlock_irqrestore(&pp->lock, flags);
}
