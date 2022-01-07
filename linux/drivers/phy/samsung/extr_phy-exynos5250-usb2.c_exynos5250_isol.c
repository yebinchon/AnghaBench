
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct samsung_usb2_phy_instance {TYPE_1__* cfg; struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {int reg_pmu; } ;
struct TYPE_2__ {int id; } ;




 int EXYNOS_5250_USB_ISOL_HOST ;
 int EXYNOS_5250_USB_ISOL_HOST_OFFSET ;
 int EXYNOS_5250_USB_ISOL_OTG ;
 int EXYNOS_5250_USB_ISOL_OTG_OFFSET ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void exynos5250_isol(struct samsung_usb2_phy_instance *inst, bool on)
{
 struct samsung_usb2_phy_driver *drv = inst->drv;
 u32 offset;
 u32 mask;

 switch (inst->cfg->id) {
 case 129:
  offset = EXYNOS_5250_USB_ISOL_OTG_OFFSET;
  mask = EXYNOS_5250_USB_ISOL_OTG;
  break;
 case 128:
  offset = EXYNOS_5250_USB_ISOL_HOST_OFFSET;
  mask = EXYNOS_5250_USB_ISOL_HOST;
  break;
 default:
  return;
 }

 regmap_update_bits(drv->reg_pmu, offset, mask, on ? 0 : mask);
}
