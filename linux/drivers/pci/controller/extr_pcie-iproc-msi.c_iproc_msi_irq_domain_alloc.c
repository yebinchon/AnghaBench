
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct iproc_msi* host_data; } ;
struct iproc_msi {int nr_msi_vecs; int bitmap_lock; int nr_cpus; int bitmap; } ;


 int ENOSPC ;
 int bitmap_find_next_zero_area (int ,int,int ,int ,int ) ;
 int bitmap_set (int ,int,int ) ;
 int handle_simple_irq ;
 int iproc_msi_bottom_irq_chip ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int,int *,struct iproc_msi*,int ,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iproc_msi_irq_domain_alloc(struct irq_domain *domain,
          unsigned int virq, unsigned int nr_irqs,
          void *args)
{
 struct iproc_msi *msi = domain->host_data;
 int hwirq, i;

 mutex_lock(&msi->bitmap_lock);


 hwirq = bitmap_find_next_zero_area(msi->bitmap, msi->nr_msi_vecs, 0,
        msi->nr_cpus, 0);
 if (hwirq < msi->nr_msi_vecs) {
  bitmap_set(msi->bitmap, hwirq, msi->nr_cpus);
 } else {
  mutex_unlock(&msi->bitmap_lock);
  return -ENOSPC;
 }

 mutex_unlock(&msi->bitmap_lock);

 for (i = 0; i < nr_irqs; i++) {
  irq_domain_set_info(domain, virq + i, hwirq + i,
        &iproc_msi_bottom_irq_chip,
        domain->host_data, handle_simple_irq,
        ((void*)0), ((void*)0));
 }

 return hwirq;
}
