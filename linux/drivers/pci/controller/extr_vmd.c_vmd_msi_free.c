
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmd_irq {TYPE_1__* irq; } ;
struct msi_domain_info {int dummy; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int count; int srcu; } ;


 struct vmd_irq* irq_get_chip_data (unsigned int) ;
 int kfree (struct vmd_irq*) ;
 int list_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_srcu (int *) ;

__attribute__((used)) static void vmd_msi_free(struct irq_domain *domain,
   struct msi_domain_info *info, unsigned int virq)
{
 struct vmd_irq *vmdirq = irq_get_chip_data(virq);
 unsigned long flags;

 synchronize_srcu(&vmdirq->irq->srcu);


 raw_spin_lock_irqsave(&list_lock, flags);
 vmdirq->irq->count--;
 raw_spin_unlock_irqrestore(&list_lock, flags);

 kfree(vmdirq);
}
