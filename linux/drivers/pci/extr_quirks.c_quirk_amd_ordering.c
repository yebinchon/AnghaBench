
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_warn (struct pci_dev*,char*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_amd_ordering(struct pci_dev *dev)
{
 u32 pcic;
 pci_read_config_dword(dev, 0x4C, &pcic);
 if ((pcic & 6) != 6) {
  pcic |= 6;
  pci_warn(dev, "BIOS failed to enable PCI standards compliance; fixing this error\n");
  pci_write_config_dword(dev, 0x4C, pcic);
  pci_read_config_dword(dev, 0x84, &pcic);
  pcic |= (1 << 23);
  pci_write_config_dword(dev, 0x84, pcic);
 }
}
