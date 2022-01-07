
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct advk_pcie* host_data; } ;
struct advk_pcie {int msi_bottom_irq_chip; int msi_used_lock; int msi_used; } ;


 int ENOSPC ;
 int MSI_IRQ_NUM ;
 int bitmap_find_next_zero_area (int ,int,int ,unsigned int,int ) ;
 int bitmap_set (int ,int,unsigned int) ;
 int handle_simple_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int *,struct advk_pcie*,int ,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int advk_msi_irq_domain_alloc(struct irq_domain *domain,
         unsigned int virq,
         unsigned int nr_irqs, void *args)
{
 struct advk_pcie *pcie = domain->host_data;
 int hwirq, i;

 mutex_lock(&pcie->msi_used_lock);
 hwirq = bitmap_find_next_zero_area(pcie->msi_used, MSI_IRQ_NUM,
        0, nr_irqs, 0);
 if (hwirq >= MSI_IRQ_NUM) {
  mutex_unlock(&pcie->msi_used_lock);
  return -ENOSPC;
 }

 bitmap_set(pcie->msi_used, hwirq, nr_irqs);
 mutex_unlock(&pcie->msi_used_lock);

 for (i = 0; i < nr_irqs; i++)
  irq_domain_set_info(domain, virq + i, hwirq + i,
        &pcie->msi_bottom_irq_chip,
        domain->host_data, handle_simple_irq,
        ((void*)0), ((void*)0));

 return hwirq;
}
