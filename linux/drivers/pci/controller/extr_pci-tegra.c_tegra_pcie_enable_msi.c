
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_soc {int msi_base_shift; } ;
struct tegra_msi {int phys; } ;
struct tegra_pcie {struct tegra_msi msi; struct tegra_pcie_soc* soc; } ;


 int AFI_INTR_MASK ;
 int AFI_INTR_MASK_MSI_MASK ;
 int AFI_MSI_AXI_BAR_ST ;
 int AFI_MSI_BAR_SZ ;
 int AFI_MSI_EN_VEC0 ;
 int AFI_MSI_EN_VEC1 ;
 int AFI_MSI_EN_VEC2 ;
 int AFI_MSI_EN_VEC3 ;
 int AFI_MSI_EN_VEC4 ;
 int AFI_MSI_EN_VEC5 ;
 int AFI_MSI_EN_VEC6 ;
 int AFI_MSI_EN_VEC7 ;
 int AFI_MSI_FPCI_BAR_ST ;
 int afi_readl (struct tegra_pcie*,int ) ;
 int afi_writel (struct tegra_pcie*,int,int ) ;

__attribute__((used)) static void tegra_pcie_enable_msi(struct tegra_pcie *pcie)
{
 const struct tegra_pcie_soc *soc = pcie->soc;
 struct tegra_msi *msi = &pcie->msi;
 u32 reg;

 afi_writel(pcie, msi->phys >> soc->msi_base_shift, AFI_MSI_FPCI_BAR_ST);
 afi_writel(pcie, msi->phys, AFI_MSI_AXI_BAR_ST);

 afi_writel(pcie, 1, AFI_MSI_BAR_SZ);


 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC0);
 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC1);
 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC2);
 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC3);
 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC4);
 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC5);
 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC6);
 afi_writel(pcie, 0xffffffff, AFI_MSI_EN_VEC7);


 reg = afi_readl(pcie, AFI_INTR_MASK);
 reg |= AFI_INTR_MASK_MSI_MASK;
 afi_writel(pcie, reg, AFI_INTR_MASK);
}
