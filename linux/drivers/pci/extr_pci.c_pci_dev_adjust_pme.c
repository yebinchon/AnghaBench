
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct device {TYPE_1__ power; } ;
struct pci_dev {scalar_t__ current_state; struct device dev; } ;


 scalar_t__ PCI_D3cold ;
 int __pci_pme_active (struct pci_dev*,int) ;
 int device_may_wakeup (struct device*) ;
 scalar_t__ pm_runtime_suspended (struct device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void pci_dev_adjust_pme(struct pci_dev *pci_dev)
{
 struct device *dev = &pci_dev->dev;

 spin_lock_irq(&dev->power.lock);

 if (pm_runtime_suspended(dev) && !device_may_wakeup(dev) &&
     pci_dev->current_state < PCI_D3cold)
  __pci_pme_active(pci_dev, 0);

 spin_unlock_irq(&dev->power.lock);
}
