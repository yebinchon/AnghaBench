
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int aer_cap; } ;
struct TYPE_2__ {int dw0; int dw1; int dw2; int dw3; } ;
struct aer_err_info {int status; int tlp_header_valid; scalar_t__ severity; int mask; TYPE_1__ tlp; int first_error; } ;


 scalar_t__ AER_CORRECTABLE ;
 int AER_LOG_TLP_MASKS ;
 scalar_t__ AER_NONFATAL ;
 scalar_t__ PCI_ERR_CAP ;
 int PCI_ERR_CAP_FEP (int) ;
 scalar_t__ PCI_ERR_COR_MASK ;
 scalar_t__ PCI_ERR_COR_STATUS ;
 scalar_t__ PCI_ERR_HEADER_LOG ;
 scalar_t__ PCI_ERR_UNCOR_MASK ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

int aer_get_device_error_info(struct pci_dev *dev, struct aer_err_info *info)
{
 int pos, temp;


 info->status = 0;
 info->tlp_header_valid = 0;

 pos = dev->aer_cap;


 if (!pos)
  return 0;

 if (info->severity == AER_CORRECTABLE) {
  pci_read_config_dword(dev, pos + PCI_ERR_COR_STATUS,
   &info->status);
  pci_read_config_dword(dev, pos + PCI_ERR_COR_MASK,
   &info->mask);
  if (!(info->status & ~info->mask))
   return 0;
 } else if (pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT ||
            pci_pcie_type(dev) == PCI_EXP_TYPE_DOWNSTREAM ||
     info->severity == AER_NONFATAL) {


  pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_STATUS,
   &info->status);
  pci_read_config_dword(dev, pos + PCI_ERR_UNCOR_MASK,
   &info->mask);
  if (!(info->status & ~info->mask))
   return 0;


  pci_read_config_dword(dev, pos + PCI_ERR_CAP, &temp);
  info->first_error = PCI_ERR_CAP_FEP(temp);

  if (info->status & AER_LOG_TLP_MASKS) {
   info->tlp_header_valid = 1;
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG, &info->tlp.dw0);
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG + 4, &info->tlp.dw1);
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG + 8, &info->tlp.dw2);
   pci_read_config_dword(dev,
    pos + PCI_ERR_HEADER_LOG + 12, &info->tlp.dw3);
  }
 }

 return 1;
}
