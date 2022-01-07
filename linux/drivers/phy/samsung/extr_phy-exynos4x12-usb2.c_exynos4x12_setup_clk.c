
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct samsung_usb2_phy_instance {struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {int ref_reg_val; scalar_t__ reg_phy; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ has_refclk_sel; } ;


 int EXYNOS_3250_UPHYCLK_REFCLKSEL ;
 scalar_t__ EXYNOS_4x12_UPHYCLK ;
 int EXYNOS_4x12_UPHYCLK_PHY1_COMMON_ON ;
 int EXYNOS_4x12_UPHYCLK_PHYFSEL_MASK ;
 int EXYNOS_4x12_UPHYCLK_PHYFSEL_OFFSET ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void exynos4x12_setup_clk(struct samsung_usb2_phy_instance *inst)
{
 struct samsung_usb2_phy_driver *drv = inst->drv;
 u32 clk;

 clk = readl(drv->reg_phy + EXYNOS_4x12_UPHYCLK);
 clk &= ~EXYNOS_4x12_UPHYCLK_PHYFSEL_MASK;

 if (drv->cfg->has_refclk_sel)
  clk = EXYNOS_3250_UPHYCLK_REFCLKSEL;

 clk |= drv->ref_reg_val << EXYNOS_4x12_UPHYCLK_PHYFSEL_OFFSET;
 clk |= EXYNOS_4x12_UPHYCLK_PHY1_COMMON_ON;
 writel(clk, drv->reg_phy + EXYNOS_4x12_UPHYCLK);
}
