
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dw_pcie {int dummy; } ;


 int PCI_CAPABILITY_LIST ;
 int __dw_pcie_find_next_cap (struct dw_pcie*,int,int) ;
 int dw_pcie_readw_dbi (struct dw_pcie*,int ) ;

u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap)
{
 u8 next_cap_ptr;
 u16 reg;

 reg = dw_pcie_readw_dbi(pci, PCI_CAPABILITY_LIST);
 next_cap_ptr = (reg & 0x00ff);

 return __dw_pcie_find_next_cap(pci, next_cap_ptr, cap);
}
