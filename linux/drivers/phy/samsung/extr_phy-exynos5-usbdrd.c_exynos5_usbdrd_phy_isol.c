
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_usb_instance {int pmu_offset; int reg_pmu; } ;


 unsigned int EXYNOS4_PHY_ENABLE ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void exynos5_usbdrd_phy_isol(struct phy_usb_instance *inst,
      unsigned int on)
{
 unsigned int val;

 if (!inst->reg_pmu)
  return;

 val = on ? 0 : EXYNOS4_PHY_ENABLE;

 regmap_update_bits(inst->reg_pmu, inst->pmu_offset,
      EXYNOS4_PHY_ENABLE, val);
}
