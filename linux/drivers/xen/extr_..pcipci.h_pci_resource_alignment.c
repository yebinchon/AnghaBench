
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_dev {int class; struct resource* resource; } ;
typedef int resource_size_t ;


 int PCI_CLASS_BRIDGE_CARDBUS ;
 int PCI_IOV_RESOURCES ;
 int PCI_IOV_RESOURCE_END ;
 int pci_cardbus_resource_alignment (struct resource*) ;
 int pci_sriov_resource_alignment (struct pci_dev*,int) ;
 int resource_alignment (struct resource*) ;

__attribute__((used)) static inline resource_size_t pci_resource_alignment(struct pci_dev *dev,
           struct resource *res)
{






 if (dev->class >> 8 == PCI_CLASS_BRIDGE_CARDBUS)
  return pci_cardbus_resource_alignment(res);
 return resource_alignment(res);
}
