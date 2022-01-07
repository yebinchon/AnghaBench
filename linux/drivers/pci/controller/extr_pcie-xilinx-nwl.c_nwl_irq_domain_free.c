
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_msi {int lock; int bitmap; } ;
struct nwl_pcie {struct nwl_msi msi; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;


 int bitmap_release_region (int ,int ,int ) ;
 int get_count_order (unsigned int) ;
 struct nwl_pcie* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void nwl_irq_domain_free(struct irq_domain *domain, unsigned int virq,
     unsigned int nr_irqs)
{
 struct irq_data *data = irq_domain_get_irq_data(domain, virq);
 struct nwl_pcie *pcie = irq_data_get_irq_chip_data(data);
 struct nwl_msi *msi = &pcie->msi;

 mutex_lock(&msi->lock);
 bitmap_release_region(msi->bitmap, data->hwirq,
         get_count_order(nr_irqs));
 mutex_unlock(&msi->lock);
}
