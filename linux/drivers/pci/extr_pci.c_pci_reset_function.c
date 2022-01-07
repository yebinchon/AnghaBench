
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int reset_fn; } ;


 int ENOTTY ;
 int __pci_reset_function_locked (struct pci_dev*) ;
 int pci_dev_lock (struct pci_dev*) ;
 int pci_dev_restore (struct pci_dev*) ;
 int pci_dev_save_and_disable (struct pci_dev*) ;
 int pci_dev_unlock (struct pci_dev*) ;

int pci_reset_function(struct pci_dev *dev)
{
 int rc;

 if (!dev->reset_fn)
  return -ENOTTY;

 pci_dev_lock(dev);
 pci_dev_save_and_disable(dev);

 rc = __pci_reset_function_locked(dev);

 pci_dev_restore(dev);
 pci_dev_unlock(dev);

 return rc;
}
