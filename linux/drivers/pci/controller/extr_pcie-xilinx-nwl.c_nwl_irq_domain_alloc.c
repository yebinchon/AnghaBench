
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_msi {int lock; int bitmap; } ;
struct nwl_pcie {struct nwl_msi msi; } ;
struct irq_domain {struct nwl_pcie* host_data; } ;


 int ENOSPC ;
 int INT_PCI_MSI_NR ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int get_count_order (unsigned int) ;
 int handle_simple_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int *,struct nwl_pcie*,int ,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nwl_irq_chip ;

__attribute__((used)) static int nwl_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
    unsigned int nr_irqs, void *args)
{
 struct nwl_pcie *pcie = domain->host_data;
 struct nwl_msi *msi = &pcie->msi;
 int bit;
 int i;

 mutex_lock(&msi->lock);
 bit = bitmap_find_free_region(msi->bitmap, INT_PCI_MSI_NR,
          get_count_order(nr_irqs));
 if (bit < 0) {
  mutex_unlock(&msi->lock);
  return -ENOSPC;
 }

 for (i = 0; i < nr_irqs; i++) {
  irq_domain_set_info(domain, virq + i, bit + i, &nwl_irq_chip,
    domain->host_data, handle_simple_irq,
    ((void*)0), ((void*)0));
 }
 mutex_unlock(&msi->lock);
 return 0;
}
