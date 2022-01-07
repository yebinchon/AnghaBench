
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_pcie {int used_msi_lock; int used_msi; } ;
struct irq_domain {struct tango_pcie* host_data; } ;


 int ENOSPC ;
 int MSI_MAX ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int) ;
 int handle_edge_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int *,struct tango_pcie*,int ,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tango_chip ;

__attribute__((used)) static int tango_irq_domain_alloc(struct irq_domain *dom, unsigned int virq,
      unsigned int nr_irqs, void *args)
{
 struct tango_pcie *pcie = dom->host_data;
 unsigned long flags;
 int pos;

 spin_lock_irqsave(&pcie->used_msi_lock, flags);
 pos = find_first_zero_bit(pcie->used_msi, MSI_MAX);
 if (pos >= MSI_MAX) {
  spin_unlock_irqrestore(&pcie->used_msi_lock, flags);
  return -ENOSPC;
 }
 __set_bit(pos, pcie->used_msi);
 spin_unlock_irqrestore(&pcie->used_msi_lock, flags);
 irq_domain_set_info(dom, virq, pos, &tango_chip,
   pcie, handle_edge_irq, ((void*)0), ((void*)0));

 return 0;
}
