
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct samsung_usb2_phy_instance {TYPE_2__* cfg; int ext_cnt; struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {struct samsung_usb2_phy_instance* instances; int reg_sys; TYPE_1__* cfg; } ;
struct TYPE_4__ {size_t id; } ;
struct TYPE_3__ {scalar_t__ has_mode_switch; } ;


 size_t EXYNOS4x12_DEVICE ;
 size_t EXYNOS4x12_HOST ;
 scalar_t__ EXYNOS4x12_HSIC0 ;
 scalar_t__ EXYNOS4x12_HSIC1 ;
 int EXYNOS_4x12_MODE_SWITCH_HOST ;
 int EXYNOS_4x12_MODE_SWITCH_MASK ;
 int EXYNOS_4x12_MODE_SWITCH_OFFSET ;
 int exynos4x12_power_off_int (struct samsung_usb2_phy_instance*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int exynos4x12_power_off(struct samsung_usb2_phy_instance *inst)
{
 struct samsung_usb2_phy_driver *drv = inst->drv;

 if (inst->ext_cnt-- > 1)
  return 0;

 if (inst->cfg->id == EXYNOS4x12_DEVICE && drv->cfg->has_mode_switch)
  regmap_update_bits(drv->reg_sys, EXYNOS_4x12_MODE_SWITCH_OFFSET,
      EXYNOS_4x12_MODE_SWITCH_MASK,
      EXYNOS_4x12_MODE_SWITCH_HOST);

 if (inst->cfg->id == EXYNOS4x12_HOST)
  exynos4x12_power_off_int(&drv->instances[EXYNOS4x12_DEVICE]);

 if (inst->cfg->id == EXYNOS4x12_HSIC0 ||
  inst->cfg->id == EXYNOS4x12_HSIC1) {
  exynos4x12_power_off_int(&drv->instances[EXYNOS4x12_DEVICE]);
  exynos4x12_power_off_int(&drv->instances[EXYNOS4x12_HOST]);
 }

 exynos4x12_power_off_int(inst);

 return 0;
}
