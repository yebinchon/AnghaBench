
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;
struct iproc_msi {int bitmap_lock; int nr_cpus; int bitmap; } ;


 int bitmap_clear (int ,unsigned int,int ) ;
 unsigned int hwirq_to_canonical_hwirq (struct iproc_msi*,int ) ;
 struct iproc_msi* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iproc_msi_irq_domain_free(struct irq_domain *domain,
          unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *data = irq_domain_get_irq_data(domain, virq);
 struct iproc_msi *msi = irq_data_get_irq_chip_data(data);
 unsigned int hwirq;

 mutex_lock(&msi->bitmap_lock);

 hwirq = hwirq_to_canonical_hwirq(msi, data->hwirq);
 bitmap_clear(msi->bitmap, hwirq, msi->nr_cpus);

 mutex_unlock(&msi->bitmap_lock);

 irq_domain_free_irqs_parent(domain, virq, nr_irqs);
}
