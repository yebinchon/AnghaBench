
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {int devfn; int aer_cap; int enable_cnt; TYPE_1__* bus; } ;
struct aer_err_info {int id; scalar_t__ severity; int multi_error_valid; } ;
struct TYPE_2__ {int bus_flags; int number; } ;


 scalar_t__ AER_CORRECTABLE ;
 int PCI_BUS_FLAGS_NO_AERSID ;
 scalar_t__ PCI_BUS_NUM (int) ;
 scalar_t__ PCI_ERR_COR_MASK ;
 scalar_t__ PCI_ERR_COR_STATUS ;
 scalar_t__ PCI_ERR_UNCOR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 int PCI_EXP_AER_FLAGS ;
 int PCI_EXP_DEVCTL ;
 scalar_t__ atomic_read (int *) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static bool is_error_source(struct pci_dev *dev, struct aer_err_info *e_info)
{
 int pos;
 u32 status, mask;
 u16 reg16;





 if ((PCI_BUS_NUM(e_info->id) != 0) &&
     !(dev->bus->bus_flags & PCI_BUS_FLAGS_NO_AERSID)) {

  if (e_info->id == ((dev->bus->number << 8) | dev->devfn))
   return 1;


  if (!e_info->multi_error_valid)
   return 0;
 }
 if (atomic_read(&dev->enable_cnt) == 0)
  return 0;


 pcie_capability_read_word(dev, PCI_EXP_DEVCTL, &reg16);
 if (!(reg16 & PCI_EXP_AER_FLAGS))
  return 0;

 pos = dev->aer_cap;
 if (!pos)
  return 0;


 if (e_info->severity == AER_CORRECTABLE) {
  pci_read_config_dword(dev, pos + PCI_ERR_COR_STATUS, &status);
  pci_read_config_dword(dev, pos + PCI_ERR_COR_MASK, &mask);
 } else {
  pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
  pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_MASK, &mask);
 }
 if (status & ~mask)
  return 1;

 return 0;
}
