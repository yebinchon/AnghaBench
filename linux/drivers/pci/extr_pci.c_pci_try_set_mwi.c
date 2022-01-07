
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_set_mwi (struct pci_dev*) ;

int pci_try_set_mwi(struct pci_dev *dev)
{



 return pci_set_mwi(dev);

}
