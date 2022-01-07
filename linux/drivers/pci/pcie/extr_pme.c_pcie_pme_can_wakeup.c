
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_set_wakeup_capable (int *,int) ;

__attribute__((used)) static int pcie_pme_can_wakeup(struct pci_dev *dev, void *ign)
{
 device_set_wakeup_capable(&dev->dev, 1);
 return 0;
}
