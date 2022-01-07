
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mobiveil_msi {unsigned long num_of_vectors; int lock; int msi_irq_in_use; } ;
struct mobiveil_pcie {struct mobiveil_msi msi; } ;
struct irq_domain {struct mobiveil_pcie* host_data; } ;


 int ENOSPC ;
 int WARN_ON (int) ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int handle_level_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,unsigned long,int *,struct mobiveil_pcie*,int ,int *,int *) ;
 int mobiveil_msi_bottom_irq_chip ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
      unsigned int virq,
      unsigned int nr_irqs, void *args)
{
 struct mobiveil_pcie *pcie = domain->host_data;
 struct mobiveil_msi *msi = &pcie->msi;
 unsigned long bit;

 WARN_ON(nr_irqs != 1);
 mutex_lock(&msi->lock);

 bit = find_first_zero_bit(msi->msi_irq_in_use, msi->num_of_vectors);
 if (bit >= msi->num_of_vectors) {
  mutex_unlock(&msi->lock);
  return -ENOSPC;
 }

 set_bit(bit, msi->msi_irq_in_use);

 mutex_unlock(&msi->lock);

 irq_domain_set_info(domain, virq, bit, &mobiveil_msi_bottom_irq_chip,
       domain->host_data, handle_level_irq, ((void*)0), ((void*)0));
 return 0;
}
