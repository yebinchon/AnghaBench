
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_msi {int bitmap_lock; int num_cpus; int bitmap; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;


 int bitmap_clear (int ,int ,int ) ;
 int hwirq_to_canonical_hwirq (int ) ;
 struct xgene_msi* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void xgene_irq_domain_free(struct irq_domain *domain,
      unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct xgene_msi *msi = irq_data_get_irq_chip_data(d);
 u32 hwirq;

 mutex_lock(&msi->bitmap_lock);

 hwirq = hwirq_to_canonical_hwirq(d->hwirq);
 bitmap_clear(msi->bitmap, hwirq, msi->num_cpus);

 mutex_unlock(&msi->bitmap_lock);

 irq_domain_free_irqs_parent(domain, virq, nr_irqs);
}
