
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct resource {int dummy; } ;
struct pci_dev {struct resource* resource; } ;


 scalar_t__ PCI_EA_BEI_BAR5 ;
 scalar_t__ PCI_EA_BEI_ROM ;
 scalar_t__ PCI_EA_BEI_VF_BAR0 ;
 scalar_t__ PCI_EA_BEI_VF_BAR5 ;
 scalar_t__ PCI_EA_P_IO ;
 scalar_t__ PCI_EA_P_VF_MEM ;
 scalar_t__ PCI_EA_P_VF_MEM_PREFETCH ;
 scalar_t__ PCI_IOV_RESOURCES ;
 size_t PCI_ROM_RESOURCE ;

__attribute__((used)) static struct resource *pci_ea_get_resource(struct pci_dev *dev, u8 bei,
         u8 prop)
{
 if (bei <= PCI_EA_BEI_BAR5 && prop <= PCI_EA_P_IO)
  return &dev->resource[bei];






 else if (bei == PCI_EA_BEI_ROM)
  return &dev->resource[PCI_ROM_RESOURCE];
 else
  return ((void*)0);
}
