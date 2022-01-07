
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct sym_chip {int features; } ;
struct pci_dev {int revision; int device; } ;


 int FE_66MHZ ;
 int PCI_STATUS ;
 int PCI_STATUS_66MHZ ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 struct sym_chip* sym_lookup_chip_table (int ,int ) ;

__attribute__((used)) static void sym2_reset_workarounds(struct pci_dev *pdev)
{
 u_short status_reg;
 struct sym_chip *chip;

 chip = sym_lookup_chip_table(pdev->device, pdev->revision);




 pci_read_config_word(pdev, PCI_STATUS, &status_reg);
 if (!(chip->features & FE_66MHZ) && (status_reg & PCI_STATUS_66MHZ)) {
  status_reg = PCI_STATUS_66MHZ;
  pci_write_config_word(pdev, PCI_STATUS, status_reg);
  pci_read_config_word(pdev, PCI_STATUS, &status_reg);
 }
}
