
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dw_pcie {int dummy; } ;


 int PCIE_ATU_VIEWPORT ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;

__attribute__((used)) static u8 dw_pcie_iatu_unroll_enabled(struct dw_pcie *pci)
{
 u32 val;

 val = dw_pcie_readl_dbi(pci, PCIE_ATU_VIEWPORT);
 if (val == 0xffffffff)
  return 1;

 return 0;
}
