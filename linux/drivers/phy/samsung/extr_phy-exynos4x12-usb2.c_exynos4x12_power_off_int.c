
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_usb2_phy_instance {int int_cnt; } ;


 int exynos4x12_isol (struct samsung_usb2_phy_instance*,int) ;
 int exynos4x12_phy_pwr (struct samsung_usb2_phy_instance*,int ) ;

__attribute__((used)) static void exynos4x12_power_off_int(struct samsung_usb2_phy_instance *inst)
{
 if (inst->int_cnt-- > 1)
  return;

 exynos4x12_isol(inst, 1);
 exynos4x12_phy_pwr(inst, 0);
}
