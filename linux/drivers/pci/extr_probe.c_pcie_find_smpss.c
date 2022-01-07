
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {scalar_t__ pcie_mpss; scalar_t__ is_hotplug_bridge; } ;


 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

__attribute__((used)) static int pcie_find_smpss(struct pci_dev *dev, void *data)
{
 u8 *smpss = data;

 if (!pci_is_pcie(dev))
  return 0;
 if (dev->is_hotplug_bridge &&
     pci_pcie_type(dev) != PCI_EXP_TYPE_ROOT_PORT)
  *smpss = 0;

 if (*smpss > dev->pcie_mpss)
  *smpss = dev->pcie_mpss;

 return 0;
}
