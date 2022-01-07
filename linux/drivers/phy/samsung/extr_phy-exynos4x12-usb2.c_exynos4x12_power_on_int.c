
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_usb2_phy_instance {int int_cnt; } ;


 int exynos4x12_isol (struct samsung_usb2_phy_instance*,int ) ;
 int exynos4x12_phy_pwr (struct samsung_usb2_phy_instance*,int) ;
 int exynos4x12_setup_clk (struct samsung_usb2_phy_instance*) ;

__attribute__((used)) static void exynos4x12_power_on_int(struct samsung_usb2_phy_instance *inst)
{
 if (inst->int_cnt++ > 0)
  return;

 exynos4x12_setup_clk(inst);
 exynos4x12_isol(inst, 0);
 exynos4x12_phy_pwr(inst, 1);
}
