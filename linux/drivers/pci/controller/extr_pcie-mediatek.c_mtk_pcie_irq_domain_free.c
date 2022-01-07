
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pcie_port {int lock; int msi_irq_in_use; TYPE_1__* pcie; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;
struct TYPE_2__ {int dev; } ;


 int __clear_bit (int ,int ) ;
 int dev_err (int ,char*,int ) ;
 struct mtk_pcie_port* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void mtk_pcie_irq_domain_free(struct irq_domain *domain,
         unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct mtk_pcie_port *port = irq_data_get_irq_chip_data(d);

 mutex_lock(&port->lock);

 if (!test_bit(d->hwirq, port->msi_irq_in_use))
  dev_err(port->pcie->dev, "trying to free unused MSI#%lu\n",
   d->hwirq);
 else
  __clear_bit(d->hwirq, port->msi_irq_in_use);

 mutex_unlock(&port->lock);

 irq_domain_free_irqs_parent(domain, virq, nr_irqs);
}
