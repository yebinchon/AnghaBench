
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;
struct altera_msi {int lock; int used; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int MSI_INTMASK ;
 int __clear_bit (int,int ) ;
 int dev_err (int *,char*,int) ;
 struct altera_msi* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int msi_readl (struct altera_msi*,int ) ;
 int msi_writel (struct altera_msi*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void altera_irq_domain_free(struct irq_domain *domain,
       unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct altera_msi *msi = irq_data_get_irq_chip_data(d);
 u32 mask;

 mutex_lock(&msi->lock);

 if (!test_bit(d->hwirq, msi->used)) {
  dev_err(&msi->pdev->dev, "trying to free unused MSI#%lu\n",
   d->hwirq);
 } else {
  __clear_bit(d->hwirq, msi->used);
  mask = msi_readl(msi, MSI_INTMASK);
  mask &= ~(1 << d->hwirq);
  msi_writel(msi, mask, MSI_INTMASK);
 }

 mutex_unlock(&msi->lock);
}
