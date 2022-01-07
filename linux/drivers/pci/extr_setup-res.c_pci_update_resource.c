
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_IOV_RESOURCES ;
 int PCI_IOV_RESOURCE_END ;
 int PCI_ROM_RESOURCE ;
 int pci_iov_update_resource (struct pci_dev*,int) ;
 int pci_std_update_resource (struct pci_dev*,int) ;

void pci_update_resource(struct pci_dev *dev, int resno)
{
 if (resno <= PCI_ROM_RESOURCE)
  pci_std_update_resource(dev, resno);




}
