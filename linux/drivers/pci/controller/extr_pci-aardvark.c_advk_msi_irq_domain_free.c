
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct advk_pcie* host_data; } ;
struct irq_data {int hwirq; } ;
struct advk_pcie {int msi_used_lock; int msi_used; } ;


 int bitmap_clear (int ,int ,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void advk_msi_irq_domain_free(struct irq_domain *domain,
         unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct advk_pcie *pcie = domain->host_data;

 mutex_lock(&pcie->msi_used_lock);
 bitmap_clear(pcie->msi_used, d->hwirq, nr_irqs);
 mutex_unlock(&pcie->msi_used_lock);
}
