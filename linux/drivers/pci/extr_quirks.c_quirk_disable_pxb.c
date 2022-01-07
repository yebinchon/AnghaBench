
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int revision; } ;


 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_disable_pxb(struct pci_dev *pdev)
{
 u16 config;

 if (pdev->revision != 0x04)
  return;
 pci_read_config_word(pdev, 0x40, &config);
 if (config & (1<<6)) {
  config &= ~(1<<6);
  pci_write_config_word(pdev, 0x40, config);
  pci_info(pdev, "C0 revision 450NX. Disabling PCI restreaming\n");
 }
}
