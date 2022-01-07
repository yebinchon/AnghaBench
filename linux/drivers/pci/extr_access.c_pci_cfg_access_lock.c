
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int block_cfg_access; } ;


 int might_sleep () ;
 int pci_lock ;
 int pci_wait_cfg (struct pci_dev*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;

void pci_cfg_access_lock(struct pci_dev *dev)
{
 might_sleep();

 raw_spin_lock_irq(&pci_lock);
 if (dev->block_cfg_access)
  pci_wait_cfg(dev);
 dev->block_cfg_access = 1;
 raw_spin_unlock_irq(&pci_lock);
}
