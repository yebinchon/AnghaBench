
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie {int dummy; } ;


 int AFI_INTR_MASK ;
 int AFI_INTR_MASK_INT_MASK ;
 int afi_readl (struct tegra_pcie*,int ) ;
 int afi_writel (struct tegra_pcie*,int ,int ) ;

__attribute__((used)) static void tegra_pcie_disable_interrupts(struct tegra_pcie *pcie)
{
 u32 value;

 value = afi_readl(pcie, AFI_INTR_MASK);
 value &= ~AFI_INTR_MASK_INT_MASK;
 afi_writel(pcie, value, AFI_INTR_MASK);
}
