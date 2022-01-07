
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ block_cfg_access; } ;


 int WARN_ON (int) ;
 int pci_cfg_wait ;
 int pci_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

void pci_cfg_access_unlock(struct pci_dev *dev)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&pci_lock, flags);





 WARN_ON(!dev->block_cfg_access);

 dev->block_cfg_access = 0;
 raw_spin_unlock_irqrestore(&pci_lock, flags);

 wake_up_all(&pci_cfg_wait);
}
