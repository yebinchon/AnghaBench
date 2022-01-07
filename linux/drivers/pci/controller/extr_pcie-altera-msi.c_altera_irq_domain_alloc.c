
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {struct altera_msi* host_data; } ;
struct altera_msi {unsigned long num_of_vectors; int lock; int used; } ;


 int ENOSPC ;
 int MSI_INTMASK ;
 int WARN_ON (int) ;
 int altera_msi_bottom_irq_chip ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int handle_simple_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,unsigned long,int *,struct altera_msi*,int ,int *,int *) ;
 int msi_readl (struct altera_msi*,int ) ;
 int msi_writel (struct altera_msi*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static int altera_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
       unsigned int nr_irqs, void *args)
{
 struct altera_msi *msi = domain->host_data;
 unsigned long bit;
 u32 mask;

 WARN_ON(nr_irqs != 1);
 mutex_lock(&msi->lock);

 bit = find_first_zero_bit(msi->used, msi->num_of_vectors);
 if (bit >= msi->num_of_vectors) {
  mutex_unlock(&msi->lock);
  return -ENOSPC;
 }

 set_bit(bit, msi->used);

 mutex_unlock(&msi->lock);

 irq_domain_set_info(domain, virq, bit, &altera_msi_bottom_irq_chip,
       domain->host_data, handle_simple_irq,
       ((void*)0), ((void*)0));

 mask = msi_readl(msi, MSI_INTMASK);
 mask |= 1 << bit;
 msi_writel(msi, mask, MSI_INTMASK);

 return 0;
}
