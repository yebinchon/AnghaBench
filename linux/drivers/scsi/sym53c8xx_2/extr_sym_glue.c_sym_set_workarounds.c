
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct sym_chip {int features; } ;
struct sym_device {struct pci_dev* pdev; struct sym_chip chip; } ;
struct pci_dev {scalar_t__ device; int revision; } ;


 int ENODEV ;
 int FE_66MHZ ;
 int FE_CLSE ;
 int FE_WRIE ;
 scalar_t__ PCI_DEVICE_ID_NCR_53C896 ;
 int PCI_STATUS ;
 int PCI_STATUS_66MHZ ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 scalar_t__ pci_set_mwi (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static int sym_set_workarounds(struct sym_device *device)
{
 struct sym_chip *chip = &device->chip;
 struct pci_dev *pdev = device->pdev;
 u_short status_reg;






 if (pdev->device == PCI_DEVICE_ID_NCR_53C896 && pdev->revision < 0x4) {
  chip->features |= (FE_WRIE | FE_CLSE);
 }


 if (chip->features & FE_WRIE) {
  if (pci_set_mwi(pdev))
   return -ENODEV;
 }
 pci_read_config_word(pdev, PCI_STATUS, &status_reg);
 if (chip->features & FE_66MHZ) {
  if (!(status_reg & PCI_STATUS_66MHZ))
   chip->features &= ~FE_66MHZ;
 } else {
  if (status_reg & PCI_STATUS_66MHZ) {
   status_reg = PCI_STATUS_66MHZ;
   pci_write_config_word(pdev, PCI_STATUS, status_reg);
   pci_read_config_word(pdev, PCI_STATUS, &status_reg);
  }
 }

 return 0;
}
