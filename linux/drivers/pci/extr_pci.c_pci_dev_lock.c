
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_lock (int *) ;
 int pci_cfg_access_lock (struct pci_dev*) ;

__attribute__((used)) static void pci_dev_lock(struct pci_dev *dev)
{
 pci_cfg_access_lock(dev);

 device_lock(&dev->dev);
}
