
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int class; } ;


 int PCI_CLASS_PROG ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void quirk_svwks_csb5ide(struct pci_dev *pdev)
{
 u8 prog;
 pci_read_config_byte(pdev, PCI_CLASS_PROG, &prog);
 if (prog & 5) {
  prog &= ~5;
  pdev->class &= ~5;
  pci_write_config_byte(pdev, PCI_CLASS_PROG, prog);

 }
}
