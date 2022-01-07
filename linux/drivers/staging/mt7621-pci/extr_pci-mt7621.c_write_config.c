
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7621_pcie {int dummy; } ;


 int RALINK_PCI_CONFIG_ADDR ;
 int RALINK_PCI_CONFIG_DATA ;
 int mt7621_pci_get_cfgaddr (int ,unsigned int,int ,int ) ;
 int pcie_write (struct mt7621_pcie*,int ,int ) ;

__attribute__((used)) static void write_config(struct mt7621_pcie *pcie, unsigned int dev,
    u32 reg, u32 val)
{
 u32 address = mt7621_pci_get_cfgaddr(0, dev, 0, reg);

 pcie_write(pcie, address, RALINK_PCI_CONFIG_ADDR);
 pcie_write(pcie, val, RALINK_PCI_CONFIG_DATA);
}
