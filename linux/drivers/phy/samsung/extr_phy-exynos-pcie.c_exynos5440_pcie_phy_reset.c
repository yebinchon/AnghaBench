
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct exynos_pcie_phy {int blk_base; } ;


 int PCIE_PHY_GLOBAL_RESET ;
 int PCIE_PHY_MAC_RESET ;
 int exynos_pcie_phy_writel (int ,int,int ) ;
 struct exynos_pcie_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int exynos5440_pcie_phy_reset(struct phy *phy)
{
 struct exynos_pcie_phy *ep = phy_get_drvdata(phy);

 exynos_pcie_phy_writel(ep->blk_base, 0, PCIE_PHY_MAC_RESET);
 exynos_pcie_phy_writel(ep->blk_base, 1, PCIE_PHY_GLOBAL_RESET);
 exynos_pcie_phy_writel(ep->blk_base, 0, PCIE_PHY_GLOBAL_RESET);

 return 0;
}
