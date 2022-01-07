
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pcie_port {int msi_irq_chip; int lock; int num_vectors; int msi_irq_in_use; } ;
struct irq_domain {struct pcie_port* host_data; } ;


 int ENOSPC ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int handle_edge_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int ,struct pcie_port*,int ,int *,int *) ;
 int order_base_2 (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dw_pcie_irq_domain_alloc(struct irq_domain *domain,
        unsigned int virq, unsigned int nr_irqs,
        void *args)
{
 struct pcie_port *pp = domain->host_data;
 unsigned long flags;
 u32 i;
 int bit;

 raw_spin_lock_irqsave(&pp->lock, flags);

 bit = bitmap_find_free_region(pp->msi_irq_in_use, pp->num_vectors,
          order_base_2(nr_irqs));

 raw_spin_unlock_irqrestore(&pp->lock, flags);

 if (bit < 0)
  return -ENOSPC;

 for (i = 0; i < nr_irqs; i++)
  irq_domain_set_info(domain, virq + i, bit + i,
        pp->msi_irq_chip,
        pp, handle_edge_irq,
        ((void*)0), ((void*)0));

 return 0;
}
