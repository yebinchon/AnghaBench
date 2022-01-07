
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ is_virtfn; } ;


 int HPX_FN_NORMAL ;
 int HPX_FN_SRIOV_PHYS ;
 int HPX_FN_SRIOV_VIRT ;
 int PCI_EXT_CAP_ID_SRIOV ;
 scalar_t__ pci_find_ext_capability (struct pci_dev*,int ) ;

__attribute__((used)) static u8 hpx3_function_type(struct pci_dev *dev)
{
 if (dev->is_virtfn)
  return HPX_FN_SRIOV_VIRT;
 else if (pci_find_ext_capability(dev, PCI_EXT_CAP_ID_SRIOV) > 0)
  return HPX_FN_SRIOV_PHYS;
 else
  return HPX_FN_NORMAL;
}
