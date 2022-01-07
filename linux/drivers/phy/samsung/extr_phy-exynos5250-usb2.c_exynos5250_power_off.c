
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct samsung_usb2_phy_instance {TYPE_1__* cfg; struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {scalar_t__ reg_phy; } ;
struct TYPE_2__ {int id; } ;






 scalar_t__ EXYNOS_5250_HOSTPHYCTRL0 ;
 int EXYNOS_5250_HOSTPHYCTRL0_FORCESLEEP ;
 int EXYNOS_5250_HOSTPHYCTRL0_FORCESUSPEND ;
 int EXYNOS_5250_HOSTPHYCTRL0_PHYSWRST ;
 int EXYNOS_5250_HOSTPHYCTRL0_PHYSWRSTALL ;
 int EXYNOS_5250_HOSTPHYCTRL0_SIDDQ ;
 scalar_t__ EXYNOS_5250_HSICPHYCTRL1 ;
 scalar_t__ EXYNOS_5250_HSICPHYCTRL2 ;
 int EXYNOS_5250_HSICPHYCTRLX_FORCESLEEP ;
 int EXYNOS_5250_HSICPHYCTRLX_FORCESUSPEND ;
 int EXYNOS_5250_HSICPHYCTRLX_REFCLKDIV_12 ;
 int EXYNOS_5250_HSICPHYCTRLX_REFCLKSEL_DEFAULT ;
 int EXYNOS_5250_HSICPHYCTRLX_SIDDQ ;
 scalar_t__ EXYNOS_5250_USBOTGSYS ;
 int EXYNOS_5250_USBOTGSYS_FORCE_SLEEP ;
 int EXYNOS_5250_USBOTGSYS_FORCE_SUSPEND ;
 int EXYNOS_5250_USBOTGSYS_SIDDQ_UOTG ;
 int exynos5250_isol (struct samsung_usb2_phy_instance*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int exynos5250_power_off(struct samsung_usb2_phy_instance *inst)
{
 struct samsung_usb2_phy_driver *drv = inst->drv;
 u32 ctrl0;
 u32 otg;
 u32 hsic;

 exynos5250_isol(inst, 1);

 switch (inst->cfg->id) {
 case 131:
  otg = readl(drv->reg_phy + EXYNOS_5250_USBOTGSYS);
  otg |= (EXYNOS_5250_USBOTGSYS_FORCE_SUSPEND |
   EXYNOS_5250_USBOTGSYS_SIDDQ_UOTG |
   EXYNOS_5250_USBOTGSYS_FORCE_SLEEP);
  writel(otg, drv->reg_phy + EXYNOS_5250_USBOTGSYS);
  break;
 case 130:
  ctrl0 = readl(drv->reg_phy + EXYNOS_5250_HOSTPHYCTRL0);
  ctrl0 |= (EXYNOS_5250_HOSTPHYCTRL0_SIDDQ |
    EXYNOS_5250_HOSTPHYCTRL0_FORCESUSPEND |
    EXYNOS_5250_HOSTPHYCTRL0_FORCESLEEP |
    EXYNOS_5250_HOSTPHYCTRL0_PHYSWRST |
    EXYNOS_5250_HOSTPHYCTRL0_PHYSWRSTALL);
  writel(ctrl0, drv->reg_phy + EXYNOS_5250_HOSTPHYCTRL0);
  break;
 case 129:
 case 128:
  hsic = (EXYNOS_5250_HSICPHYCTRLX_REFCLKDIV_12 |
    EXYNOS_5250_HSICPHYCTRLX_REFCLKSEL_DEFAULT |
    EXYNOS_5250_HSICPHYCTRLX_SIDDQ |
    EXYNOS_5250_HSICPHYCTRLX_FORCESLEEP |
    EXYNOS_5250_HSICPHYCTRLX_FORCESUSPEND
    );
  writel(hsic, drv->reg_phy + EXYNOS_5250_HSICPHYCTRL1);
  writel(hsic, drv->reg_phy + EXYNOS_5250_HSICPHYCTRL2);
  break;
 }

 return 0;
}
