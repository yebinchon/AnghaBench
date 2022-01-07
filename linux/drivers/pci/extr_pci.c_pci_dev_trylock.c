
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 scalar_t__ device_trylock (int *) ;
 scalar_t__ pci_cfg_access_trylock (struct pci_dev*) ;
 int pci_cfg_access_unlock (struct pci_dev*) ;

__attribute__((used)) static int pci_dev_trylock(struct pci_dev *dev)
{
 if (pci_cfg_access_trylock(dev)) {
  if (device_trylock(&dev->dev))
   return 1;
  pci_cfg_access_unlock(dev);
 }

 return 0;
}
