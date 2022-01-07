
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;


 int PCIE_DBI_RO_WR_EN ;
 int PCIE_MISC_CONTROL_1_OFF ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int ) ;

__attribute__((used)) static inline void dw_pcie_dbi_ro_wr_dis(struct dw_pcie *pci)
{
 u32 reg;
 u32 val;

 reg = PCIE_MISC_CONTROL_1_OFF;
 val = dw_pcie_readl_dbi(pci, reg);
 val &= ~PCIE_DBI_RO_WR_EN;
 dw_pcie_writel_dbi(pci, reg, val);
}
