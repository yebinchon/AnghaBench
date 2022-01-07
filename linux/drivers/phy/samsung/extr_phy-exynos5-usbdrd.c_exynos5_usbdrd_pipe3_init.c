
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos5_usbdrd_phy {scalar_t__ reg_phy; } ;


 scalar_t__ EXYNOS5_DRD_PHYPARAM1 ;
 scalar_t__ EXYNOS5_DRD_PHYTEST ;
 int PHYPARAM1_PCS_TXDEEMPH ;
 int PHYPARAM1_PCS_TXDEEMPH_MASK ;
 int PHYTEST_POWERDOWN_SSP ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void exynos5_usbdrd_pipe3_init(struct exynos5_usbdrd_phy *phy_drd)
{
 u32 reg;

 reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);

 reg &= ~PHYPARAM1_PCS_TXDEEMPH_MASK;
 reg |= PHYPARAM1_PCS_TXDEEMPH;
 writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);

 reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
 reg &= ~PHYTEST_POWERDOWN_SSP;
 writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
}
