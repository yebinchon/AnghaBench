
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_pcie {int dummy; } ;


 scalar_t__ PCIE_GET_ATU_INB_UNR_REG_OFFSET (scalar_t__) ;
 int dw_pcie_writel_atu (struct dw_pcie*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void dw_pcie_writel_ib_unroll(struct dw_pcie *pci, u32 index, u32 reg,
         u32 val)
{
 u32 offset = PCIE_GET_ATU_INB_UNR_REG_OFFSET(index);

 dw_pcie_writel_atu(pci, offset + reg, val);
}
