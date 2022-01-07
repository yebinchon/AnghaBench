
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mobiveil_msi {int lock; int msi_irq_in_use; } ;
struct mobiveil_pcie {TYPE_1__* pdev; struct mobiveil_msi msi; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;
struct TYPE_2__ {int dev; } ;


 int __clear_bit (int ,int ) ;
 int dev_err (int *,char*,int ) ;
 struct mobiveil_pcie* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
      unsigned int virq,
      unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(d);
 struct mobiveil_msi *msi = &pcie->msi;

 mutex_lock(&msi->lock);

 if (!test_bit(d->hwirq, msi->msi_irq_in_use))
  dev_err(&pcie->pdev->dev, "trying to free unused MSI#%lu\n",
   d->hwirq);
 else
  __clear_bit(d->hwirq, msi->msi_irq_in_use);

 mutex_unlock(&msi->lock);
}
