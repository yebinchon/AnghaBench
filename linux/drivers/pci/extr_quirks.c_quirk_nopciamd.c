
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCIAGP_FAIL ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_pci_problems ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;

__attribute__((used)) static void quirk_nopciamd(struct pci_dev *dev)
{
 u8 rev;
 pci_read_config_byte(dev, 0x08, &rev);
 if (rev == 0x13) {

  pci_info(dev, "Chipset erratum: Disabling direct PCI/AGP transfers\n");
  pci_pci_problems |= PCIAGP_FAIL;
 }
}
