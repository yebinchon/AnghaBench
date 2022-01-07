
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie {int dummy; } ;


 int AFI_INTR_MASK ;
 int AFI_INTR_MASK_MSI_MASK ;
 int AFI_MSI_EN_VEC0 ;
 int AFI_MSI_EN_VEC1 ;
 int AFI_MSI_EN_VEC2 ;
 int AFI_MSI_EN_VEC3 ;
 int AFI_MSI_EN_VEC4 ;
 int AFI_MSI_EN_VEC5 ;
 int AFI_MSI_EN_VEC6 ;
 int AFI_MSI_EN_VEC7 ;
 int afi_readl (struct tegra_pcie*,int ) ;
 int afi_writel (struct tegra_pcie*,int ,int ) ;

__attribute__((used)) static int tegra_pcie_disable_msi(struct tegra_pcie *pcie)
{
 u32 value;


 value = afi_readl(pcie, AFI_INTR_MASK);
 value &= ~AFI_INTR_MASK_MSI_MASK;
 afi_writel(pcie, value, AFI_INTR_MASK);


 afi_writel(pcie, 0, AFI_MSI_EN_VEC0);
 afi_writel(pcie, 0, AFI_MSI_EN_VEC1);
 afi_writel(pcie, 0, AFI_MSI_EN_VEC2);
 afi_writel(pcie, 0, AFI_MSI_EN_VEC3);
 afi_writel(pcie, 0, AFI_MSI_EN_VEC4);
 afi_writel(pcie, 0, AFI_MSI_EN_VEC5);
 afi_writel(pcie, 0, AFI_MSI_EN_VEC6);
 afi_writel(pcie, 0, AFI_MSI_EN_VEC7);

 return 0;
}
