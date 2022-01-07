
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int aer_cap; } ;
struct aer_err_info {int severity; } ;


 int AER_FATAL ;
 int AER_NONFATAL ;
 scalar_t__ PCI_ERR_UNCOR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_SEVER ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int dpc_get_aer_uncorrect_severity(struct pci_dev *dev,
       struct aer_err_info *info)
{
 int pos = dev->aer_cap;
 u32 status, mask, sev;

 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_MASK, &mask);
 status &= ~mask;
 if (!status)
  return 0;

 pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_SEVER, &sev);
 status &= sev;
 if (status)
  info->severity = AER_FATAL;
 else
  info->severity = AER_NONFATAL;

 return 1;
}
