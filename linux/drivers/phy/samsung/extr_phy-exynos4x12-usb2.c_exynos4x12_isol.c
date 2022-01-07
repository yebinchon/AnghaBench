
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct samsung_usb2_phy_instance {TYPE_1__* cfg; struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {int reg_pmu; } ;
struct TYPE_2__ {int id; } ;






 int EXYNOS_4x12_USB_ISOL_HSIC0 ;
 int EXYNOS_4x12_USB_ISOL_HSIC0_OFFSET ;
 int EXYNOS_4x12_USB_ISOL_HSIC1 ;
 int EXYNOS_4x12_USB_ISOL_HSIC1_OFFSET ;
 int EXYNOS_4x12_USB_ISOL_OFFSET ;
 int EXYNOS_4x12_USB_ISOL_OTG ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void exynos4x12_isol(struct samsung_usb2_phy_instance *inst, bool on)
{
 struct samsung_usb2_phy_driver *drv = inst->drv;
 u32 offset;
 u32 mask;

 switch (inst->cfg->id) {
 case 131:
 case 130:
  offset = EXYNOS_4x12_USB_ISOL_OFFSET;
  mask = EXYNOS_4x12_USB_ISOL_OTG;
  break;
 case 129:
  offset = EXYNOS_4x12_USB_ISOL_HSIC0_OFFSET;
  mask = EXYNOS_4x12_USB_ISOL_HSIC0;
  break;
 case 128:
  offset = EXYNOS_4x12_USB_ISOL_HSIC1_OFFSET;
  mask = EXYNOS_4x12_USB_ISOL_HSIC1;
  break;
 default:
  return;
 }

 regmap_update_bits(drv->reg_pmu, offset, mask, on ? 0 : mask);
}
