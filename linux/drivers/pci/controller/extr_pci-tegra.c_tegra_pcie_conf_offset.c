
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;

__attribute__((used)) static unsigned int tegra_pcie_conf_offset(u8 bus, unsigned int devfn,
        unsigned int where)
{
 return ((where & 0xf00) << 16) | (bus << 16) | (PCI_SLOT(devfn) << 11) |
        (PCI_FUNC(devfn) << 8) | (where & 0xff);
}
