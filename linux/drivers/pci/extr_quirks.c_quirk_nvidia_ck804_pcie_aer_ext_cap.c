
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_nvidia_ck804_pcie_aer_ext_cap(struct pci_dev *dev)
{
 uint8_t b;

 if (pci_read_config_byte(dev, 0xf41, &b) == 0) {
  if (!(b & 0x20)) {
   pci_write_config_byte(dev, 0xf41, b | 0x20);
   pci_info(dev, "Linking AER extended capability\n");
  }
 }
}
