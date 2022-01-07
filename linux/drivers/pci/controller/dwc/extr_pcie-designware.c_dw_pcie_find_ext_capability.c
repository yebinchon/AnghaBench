
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dw_pcie {int dummy; } ;


 int dw_pcie_find_next_ext_capability (struct dw_pcie*,int ,int ) ;

u16 dw_pcie_find_ext_capability(struct dw_pcie *pci, u8 cap)
{
 return dw_pcie_find_next_ext_capability(pci, 0, cap);
}
