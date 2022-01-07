
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct exynos_pcie_phy {int phy_base; int blk_base; } ;


 int PCIE_PHY_CMN_REG ;
 int PCIE_PHY_COMMON_PD_CMN ;
 int PCIE_PHY_COMMON_POWER ;
 int PCIE_PHY_COMMON_RESET ;
 int PCIE_PHY_TRSV0_PD_TSV ;
 int PCIE_PHY_TRSV0_POWER ;
 int PCIE_PHY_TRSV1_PD_TSV ;
 int PCIE_PHY_TRSV1_POWER ;
 int PCIE_PHY_TRSV2_PD_TSV ;
 int PCIE_PHY_TRSV2_POWER ;
 int PCIE_PHY_TRSV3_PD_TSV ;
 int PCIE_PHY_TRSV3_POWER ;
 int PCIE_PHY_TRSVREG_RESET ;
 int PCIE_PHY_TRSV_RESET ;
 int exynos_pcie_phy_readl (int ,int ) ;
 int exynos_pcie_phy_writel (int ,int ,int ) ;
 struct exynos_pcie_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int exynos5440_pcie_phy_power_on(struct phy *phy)
{
 struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
 u32 val;

 exynos_pcie_phy_writel(ep->blk_base, 0, PCIE_PHY_COMMON_RESET);
 exynos_pcie_phy_writel(ep->blk_base, 0, PCIE_PHY_CMN_REG);
 exynos_pcie_phy_writel(ep->blk_base, 0, PCIE_PHY_TRSVREG_RESET);
 exynos_pcie_phy_writel(ep->blk_base, 0, PCIE_PHY_TRSV_RESET);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_COMMON_POWER);
 val &= ~PCIE_PHY_COMMON_PD_CMN;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_COMMON_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV0_POWER);
 val &= ~PCIE_PHY_TRSV0_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV0_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV1_POWER);
 val &= ~PCIE_PHY_TRSV1_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV1_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV2_POWER);
 val &= ~PCIE_PHY_TRSV2_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV2_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV3_POWER);
 val &= ~PCIE_PHY_TRSV3_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV3_POWER);

 return 0;
}
