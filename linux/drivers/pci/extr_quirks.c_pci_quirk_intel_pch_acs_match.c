
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 scalar_t__* pci_quirk_intel_pch_acs_ids ;

__attribute__((used)) static bool pci_quirk_intel_pch_acs_match(struct pci_dev *dev)
{
 int i;


 if (!pci_is_pcie(dev) || pci_pcie_type(dev) != PCI_EXP_TYPE_ROOT_PORT)
  return 0;

 for (i = 0; i < ARRAY_SIZE(pci_quirk_intel_pch_acs_ids); i++)
  if (pci_quirk_intel_pch_acs_ids[i] == dev->device)
   return 1;

 return 0;
}
