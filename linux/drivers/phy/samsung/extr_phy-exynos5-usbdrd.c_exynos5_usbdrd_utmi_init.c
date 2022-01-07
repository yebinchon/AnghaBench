
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos5_usbdrd_phy {scalar_t__ reg_phy; } ;


 scalar_t__ EXYNOS5_DRD_PHYPARAM0 ;
 scalar_t__ EXYNOS5_DRD_PHYPARAM1 ;
 scalar_t__ EXYNOS5_DRD_PHYTEST ;
 scalar_t__ EXYNOS5_DRD_PHYUTMI ;
 int PHYPARAM0_REF_LOSLEVEL ;
 int PHYPARAM0_REF_LOSLEVEL_MASK ;
 int PHYPARAM1_PCS_TXDEEMPH ;
 int PHYPARAM1_PCS_TXDEEMPH_MASK ;
 int PHYTEST_POWERDOWN_HSP ;
 int PHYUTMI_OTGDISABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void exynos5_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
{
 u32 reg;

 reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);

 reg &= ~PHYPARAM0_REF_LOSLEVEL_MASK;
 reg |= PHYPARAM0_REF_LOSLEVEL;
 writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM0);

 reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);

 reg &= ~PHYPARAM1_PCS_TXDEEMPH_MASK;
 reg |= PHYPARAM1_PCS_TXDEEMPH;
 writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYPARAM1);


 writel(PHYUTMI_OTGDISABLE, phy_drd->reg_phy + EXYNOS5_DRD_PHYUTMI);

 reg = readl(phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
 reg &= ~PHYTEST_POWERDOWN_HSP;
 writel(reg, phy_drd->reg_phy + EXYNOS5_DRD_PHYTEST);
}
