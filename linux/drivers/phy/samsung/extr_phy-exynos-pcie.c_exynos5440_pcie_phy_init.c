
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct exynos_pcie_phy {int blk_base; int phy_base; } ;


 int PCIE_PHY_COMMON_RESET ;
 int PCIE_PHY_DCC_FEEDBACK ;
 int PCIE_PHY_IMPEDANCE ;
 int PCIE_PHY_PLL_BIAS ;
 int PCIE_PHY_PLL_DIV_0 ;
 int PCIE_PHY_PLL_DIV_1 ;
 int PCIE_PHY_TRSV0_DRV_LVL ;
 int PCIE_PHY_TRSV0_EMP_LVL ;
 int PCIE_PHY_TRSV0_LVCC ;
 int PCIE_PHY_TRSV0_RXCDR ;
 int PCIE_PHY_TRSV1_EMP_LVL ;
 int PCIE_PHY_TRSV1_LVCC ;
 int PCIE_PHY_TRSV1_RXCDR ;
 int PCIE_PHY_TRSV2_EMP_LVL ;
 int PCIE_PHY_TRSV2_LVCC ;
 int PCIE_PHY_TRSV2_RXCDR ;
 int PCIE_PHY_TRSV3_EMP_LVL ;
 int PCIE_PHY_TRSV3_LVCC ;
 int PCIE_PHY_TRSV3_RXCDR ;
 int exynos_pcie_phy_writel (int ,int,int ) ;
 struct exynos_pcie_phy* phy_get_drvdata (struct phy*) ;
 int udelay (int) ;

__attribute__((used)) static int exynos5440_pcie_phy_init(struct phy *phy)
{
 struct exynos_pcie_phy *ep = phy_get_drvdata(phy);


 exynos_pcie_phy_writel(ep->phy_base, 0x29, PCIE_PHY_DCC_FEEDBACK);


 exynos_pcie_phy_writel(ep->phy_base, 0xd5, PCIE_PHY_IMPEDANCE);


 exynos_pcie_phy_writel(ep->phy_base, 0x14, PCIE_PHY_PLL_DIV_0);
 exynos_pcie_phy_writel(ep->phy_base, 0x12, PCIE_PHY_PLL_DIV_1);


 exynos_pcie_phy_writel(ep->phy_base, 0x7f, PCIE_PHY_TRSV0_DRV_LVL);


 exynos_pcie_phy_writel(ep->phy_base, 0x0, PCIE_PHY_TRSV0_EMP_LVL);


 exynos_pcie_phy_writel(ep->phy_base, 0xe7, PCIE_PHY_PLL_BIAS);
 exynos_pcie_phy_writel(ep->phy_base, 0x82, PCIE_PHY_TRSV0_RXCDR);
 exynos_pcie_phy_writel(ep->phy_base, 0x82, PCIE_PHY_TRSV1_RXCDR);
 exynos_pcie_phy_writel(ep->phy_base, 0x82, PCIE_PHY_TRSV2_RXCDR);
 exynos_pcie_phy_writel(ep->phy_base, 0x82, PCIE_PHY_TRSV3_RXCDR);


 exynos_pcie_phy_writel(ep->phy_base, 0x39, PCIE_PHY_TRSV0_EMP_LVL);
 exynos_pcie_phy_writel(ep->phy_base, 0x39, PCIE_PHY_TRSV1_EMP_LVL);
 exynos_pcie_phy_writel(ep->phy_base, 0x39, PCIE_PHY_TRSV2_EMP_LVL);
 exynos_pcie_phy_writel(ep->phy_base, 0x39, PCIE_PHY_TRSV3_EMP_LVL);


 exynos_pcie_phy_writel(ep->phy_base, 0x20, PCIE_PHY_TRSV0_LVCC);
 exynos_pcie_phy_writel(ep->phy_base, 0xa0, PCIE_PHY_TRSV1_LVCC);
 exynos_pcie_phy_writel(ep->phy_base, 0xa0, PCIE_PHY_TRSV2_LVCC);
 exynos_pcie_phy_writel(ep->phy_base, 0xa0, PCIE_PHY_TRSV3_LVCC);


 exynos_pcie_phy_writel(ep->blk_base, 1, PCIE_PHY_COMMON_RESET);
 udelay(500);
 exynos_pcie_phy_writel(ep->blk_base, 0, PCIE_PHY_COMMON_RESET);

 return 0;
}
