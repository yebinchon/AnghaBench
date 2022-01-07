
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int class; } ;


 int PCI_CLASS_DEVICE ;
 int PCI_CLASS_STORAGE_SATA_AHCI ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_amd_ide_mode(struct pci_dev *pdev)
{

 u8 tmp;

 pci_read_config_byte(pdev, PCI_CLASS_DEVICE, &tmp);
 if (tmp == 0x01) {
  pci_read_config_byte(pdev, 0x40, &tmp);
  pci_write_config_byte(pdev, 0x40, tmp|1);
  pci_write_config_byte(pdev, 0x9, 1);
  pci_write_config_byte(pdev, 0xa, 6);
  pci_write_config_byte(pdev, 0x40, tmp);

  pdev->class = PCI_CLASS_STORAGE_SATA_AHCI;
  pci_info(pdev, "set SATA to AHCI mode\n");
 }
}
