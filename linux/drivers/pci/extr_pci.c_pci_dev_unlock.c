
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_unlock (int *) ;
 int pci_cfg_access_unlock (struct pci_dev*) ;

__attribute__((used)) static void pci_dev_unlock(struct pci_dev *dev)
{
 device_unlock(&dev->dev);
 pci_cfg_access_unlock(dev);
}
