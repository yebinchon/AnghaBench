
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dw_pcie {int dummy; } ;


 int PCI_CAP_ID_MAX ;
 int dw_pcie_readw_dbi (struct dw_pcie*,int) ;

__attribute__((used)) static u8 __dw_pcie_find_next_cap(struct dw_pcie *pci, u8 cap_ptr,
      u8 cap)
{
 u8 cap_id, next_cap_ptr;
 u16 reg;

 if (!cap_ptr)
  return 0;

 reg = dw_pcie_readw_dbi(pci, cap_ptr);
 cap_id = (reg & 0x00ff);

 if (cap_id > PCI_CAP_ID_MAX)
  return 0;

 if (cap_id == cap)
  return cap_ptr;

 next_cap_ptr = (reg & 0xff00) >> 8;
 return __dw_pcie_find_next_cap(pci, next_cap_ptr, cap);
}
