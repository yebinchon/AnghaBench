
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_msi {int bitmap_lock; int num_cpus; int bitmap; } ;
struct irq_domain {struct xgene_msi* host_data; } ;


 int ENOSPC ;
 int NR_MSI_VEC ;
 int bitmap_find_next_zero_area (int ,int,int ,int ,int ) ;
 int bitmap_set (int ,int,int ) ;
 int handle_simple_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int *,struct xgene_msi*,int ,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xgene_msi_bottom_irq_chip ;

__attribute__((used)) static int xgene_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
      unsigned int nr_irqs, void *args)
{
 struct xgene_msi *msi = domain->host_data;
 int msi_irq;

 mutex_lock(&msi->bitmap_lock);

 msi_irq = bitmap_find_next_zero_area(msi->bitmap, NR_MSI_VEC, 0,
          msi->num_cpus, 0);
 if (msi_irq < NR_MSI_VEC)
  bitmap_set(msi->bitmap, msi_irq, msi->num_cpus);
 else
  msi_irq = -ENOSPC;

 mutex_unlock(&msi->bitmap_lock);

 if (msi_irq < 0)
  return msi_irq;

 irq_domain_set_info(domain, virq, msi_irq,
       &xgene_msi_bottom_irq_chip, domain->host_data,
       handle_simple_irq, ((void*)0), ((void*)0));

 return 0;
}
