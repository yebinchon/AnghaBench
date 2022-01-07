
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;


 int PCI_CAP_ID_SHPC ;
 scalar_t__ PCI_DEVICE_ID_AMD_GOLAM_7450 ;
 scalar_t__ PCI_VENDOR_ID_AMD ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;

__attribute__((used)) static bool shpc_capable(struct pci_dev *bridge)
{




 if (bridge->vendor == PCI_VENDOR_ID_AMD &&
     bridge->device == PCI_DEVICE_ID_AMD_GOLAM_7450)
  return 1;

 if (pci_find_capability(bridge, PCI_CAP_ID_SHPC))
  return 1;

 return 0;
}
