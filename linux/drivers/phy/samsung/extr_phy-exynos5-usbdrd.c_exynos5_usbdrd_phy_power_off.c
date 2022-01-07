
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_usb_instance {TYPE_2__* phy_cfg; } ;
struct phy {int dummy; } ;
struct exynos5_usbdrd_phy {int utmiclk; int pipeclk; int itpclk; TYPE_1__* drv_data; int ref_clk; scalar_t__ vbus_boost; scalar_t__ vbus; int dev; } ;
struct TYPE_4__ {int (* phy_isol ) (struct phy_usb_instance*,int) ;} ;
struct TYPE_3__ {int has_common_clk_gate; } ;


 int clk_disable_unprepare (int ) ;
 int dev_dbg (int ,char*) ;
 struct phy_usb_instance* phy_get_drvdata (struct phy*) ;
 int regulator_disable (scalar_t__) ;
 int stub1 (struct phy_usb_instance*,int) ;
 struct exynos5_usbdrd_phy* to_usbdrd_phy (struct phy_usb_instance*) ;

__attribute__((used)) static int exynos5_usbdrd_phy_power_off(struct phy *phy)
{
 struct phy_usb_instance *inst = phy_get_drvdata(phy);
 struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);

 dev_dbg(phy_drd->dev, "Request to power_off usbdrd_phy phy\n");


 inst->phy_cfg->phy_isol(inst, 1);


 if (phy_drd->vbus)
  regulator_disable(phy_drd->vbus);
 if (phy_drd->vbus_boost)
  regulator_disable(phy_drd->vbus_boost);

 clk_disable_unprepare(phy_drd->ref_clk);
 if (!phy_drd->drv_data->has_common_clk_gate) {
  clk_disable_unprepare(phy_drd->itpclk);
  clk_disable_unprepare(phy_drd->pipeclk);
  clk_disable_unprepare(phy_drd->utmiclk);
 }

 return 0;
}
