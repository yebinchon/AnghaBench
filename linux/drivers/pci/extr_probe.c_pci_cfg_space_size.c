
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {int class; TYPE_1__* bus; scalar_t__ is_virtfn; } ;
struct TYPE_2__ {int bus_flags; } ;


 int PCI_BUS_FLAGS_NO_EXTCFG ;
 int PCI_CAP_ID_PCIX ;
 int PCI_CFG_SPACE_EXP_SIZE ;
 int PCI_CFG_SPACE_SIZE ;
 int PCI_CLASS_BRIDGE_HOST ;
 scalar_t__ PCI_X_STATUS ;
 int PCI_X_STATUS_266MHZ ;
 int PCI_X_STATUS_533MHZ ;
 int pci_cfg_space_size_ext (struct pci_dev*) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

int pci_cfg_space_size(struct pci_dev *dev)
{
 int pos;
 u32 status;
 u16 class;
 if (dev->bus->bus_flags & PCI_BUS_FLAGS_NO_EXTCFG)
  return PCI_CFG_SPACE_SIZE;

 class = dev->class >> 8;
 if (class == PCI_CLASS_BRIDGE_HOST)
  return pci_cfg_space_size_ext(dev);

 if (pci_is_pcie(dev))
  return pci_cfg_space_size_ext(dev);

 pos = pci_find_capability(dev, PCI_CAP_ID_PCIX);
 if (!pos)
  return PCI_CFG_SPACE_SIZE;

 pci_read_config_dword(dev, pos + PCI_X_STATUS, &status);
 if (status & (PCI_X_STATUS_266MHZ | PCI_X_STATUS_533MHZ))
  return pci_cfg_space_size_ext(dev);

 return PCI_CFG_SPACE_SIZE;
}
