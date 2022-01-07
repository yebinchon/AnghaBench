
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {scalar_t__ hdr_type; } ;


 int PCI_CAP_ID_EA ;
 int PCI_EA_FIRST_ENT ;
 int PCI_EA_SEC_BUS_MASK ;
 int PCI_EA_SUB_BUS_MASK ;
 int PCI_EA_SUB_BUS_SHIFT ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static bool pci_ea_fixed_busnrs(struct pci_dev *dev, u8 *sec, u8 *sub)
{
 int ea, offset;
 u32 dw;

 if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE)
  return 0;


 ea = pci_find_capability(dev, PCI_CAP_ID_EA);
 if (!ea)
  return 0;

 offset = ea + PCI_EA_FIRST_ENT;
 pci_read_config_dword(dev, offset, &dw);
 *sec = dw & PCI_EA_SEC_BUS_MASK;
 *sub = (dw & PCI_EA_SUB_BUS_MASK) >> PCI_EA_SUB_BUS_SHIFT;
 return 1;
}
