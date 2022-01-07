
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_pcie {int used_msi_lock; int used_msi; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; struct tango_pcie* chip_data; } ;


 int __clear_bit (int ,int ) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tango_irq_domain_free(struct irq_domain *dom, unsigned int virq,
      unsigned int nr_irqs)
{
 unsigned long flags;
 struct irq_data *d = irq_domain_get_irq_data(dom, virq);
 struct tango_pcie *pcie = d->chip_data;

 spin_lock_irqsave(&pcie->used_msi_lock, flags);
 __clear_bit(d->hwirq, pcie->used_msi);
 spin_unlock_irqrestore(&pcie->used_msi_lock, flags);
}
