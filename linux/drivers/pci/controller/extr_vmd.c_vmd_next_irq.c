
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmd_irq_list {scalar_t__ count; } ;
struct vmd_dev {int msix_count; struct vmd_irq_list* irqs; } ;
struct msi_desc {int dummy; } ;
struct TYPE_2__ {int class; } ;



 int list_lock ;
 TYPE_1__* msi_desc_to_pci_dev (struct msi_desc*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct vmd_irq_list *vmd_next_irq(struct vmd_dev *vmd, struct msi_desc *desc)
{
 int i, best = 1;
 unsigned long flags;

 if (vmd->msix_count == 1)
  return &vmd->irqs[0];





 switch (msi_desc_to_pci_dev(desc)->class) {
 case 128:
  break;
 default:
  return &vmd->irqs[0];
 }

 raw_spin_lock_irqsave(&list_lock, flags);
 for (i = 1; i < vmd->msix_count; i++)
  if (vmd->irqs[i].count < vmd->irqs[best].count)
   best = i;
 vmd->irqs[best].count++;
 raw_spin_unlock_irqrestore(&list_lock, flags);

 return &vmd->irqs[best];
}
