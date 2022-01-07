
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dev; } ;
struct exynos_pcie_phy {scalar_t__ phy_base; } ;


 int ETIMEDOUT ;
 int PCIE_PHY_COMMON_PD_CMN ;
 int PCIE_PHY_COMMON_POWER ;
 scalar_t__ PCIE_PHY_PLL_LOCKED ;
 int PCIE_PHY_TRSV0_PD_TSV ;
 int PCIE_PHY_TRSV0_POWER ;
 int PCIE_PHY_TRSV1_PD_TSV ;
 int PCIE_PHY_TRSV1_POWER ;
 int PCIE_PHY_TRSV2_PD_TSV ;
 int PCIE_PHY_TRSV2_POWER ;
 int PCIE_PHY_TRSV3_PD_TSV ;
 int PCIE_PHY_TRSV3_POWER ;
 int dev_err (int *,char*,int ) ;
 int exynos_pcie_phy_readl (scalar_t__,int ) ;
 int exynos_pcie_phy_writel (scalar_t__,int ,int ) ;
 struct exynos_pcie_phy* phy_get_drvdata (struct phy*) ;
 scalar_t__ readl_poll_timeout (scalar_t__,int ,int,int,int) ;

__attribute__((used)) static int exynos5440_pcie_phy_power_off(struct phy *phy)
{
 struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
 u32 val;

 if (readl_poll_timeout(ep->phy_base + PCIE_PHY_PLL_LOCKED, val,
    (val != 0), 1, 500)) {
  dev_err(&phy->dev, "PLL Locked: 0x%x\n", val);
  return -ETIMEDOUT;
 }

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_COMMON_POWER);
 val |= PCIE_PHY_COMMON_PD_CMN;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_COMMON_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV0_POWER);
 val |= PCIE_PHY_TRSV0_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV0_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV1_POWER);
 val |= PCIE_PHY_TRSV1_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV1_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV2_POWER);
 val |= PCIE_PHY_TRSV2_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV2_POWER);

 val = exynos_pcie_phy_readl(ep->phy_base, PCIE_PHY_TRSV3_POWER);
 val |= PCIE_PHY_TRSV3_PD_TSV;
 exynos_pcie_phy_writel(ep->phy_base, val, PCIE_PHY_TRSV3_POWER);

 return 0;
}
