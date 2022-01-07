
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int aer_cap; } ;


 int EIO ;
 scalar_t__ PCI_ERR_UNCOR_SEVER ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 scalar_t__ pcie_aer_get_firmware_first (struct pci_dev*) ;

int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *dev)
{
 int pos;
 u32 status, sev;

 pos = dev->aer_cap;
 if (!pos)
  return -EIO;

 if (pcie_aer_get_firmware_first(dev))
  return -EIO;


 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_SEVER, &sev);
 status &= ~sev;
 if (status)
  pci_write_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS, status);

 return 0;
}
