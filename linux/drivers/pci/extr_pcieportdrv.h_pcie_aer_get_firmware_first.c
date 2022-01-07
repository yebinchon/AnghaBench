
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int __aer_firmware_first; scalar_t__ __aer_firmware_first_valid; } ;



__attribute__((used)) static inline int pcie_aer_get_firmware_first(struct pci_dev *pci_dev)
{
 if (pci_dev->__aer_firmware_first_valid)
  return pci_dev->__aer_firmware_first;
 return 0;
}
