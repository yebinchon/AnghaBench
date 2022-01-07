
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_mediagx_master(struct pci_dev *dev)
{
 u8 reg;

 pci_read_config_byte(dev, 0x41, &reg);
 if (reg & 2) {
  reg &= ~2;
  pci_info(dev, "Fixup for MediaGX/Geode Slave Disconnect Boundary (0x41=0x%02x)\n",
    reg);
  pci_write_config_byte(dev, 0x41, reg);
 }
}
