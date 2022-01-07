
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;


 int dw_pcie_read_atu (struct dw_pcie*,int ,int) ;

__attribute__((used)) static inline u32 dw_pcie_readl_atu(struct dw_pcie *pci, u32 reg)
{
 return dw_pcie_read_atu(pci, reg, 0x4);
}
