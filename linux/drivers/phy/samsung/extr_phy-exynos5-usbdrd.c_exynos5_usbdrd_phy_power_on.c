
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_usb_instance {TYPE_1__* phy_cfg; } ;
struct phy {int dummy; } ;
struct exynos5_usbdrd_phy {int pipeclk; int utmiclk; int itpclk; TYPE_2__* drv_data; int ref_clk; scalar_t__ vbus_boost; int dev; scalar_t__ vbus; } ;
struct TYPE_4__ {int has_common_clk_gate; } ;
struct TYPE_3__ {int (* phy_isol ) (struct phy_usb_instance*,int ) ;} ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 struct phy_usb_instance* phy_get_drvdata (struct phy*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int stub1 (struct phy_usb_instance*,int ) ;
 struct exynos5_usbdrd_phy* to_usbdrd_phy (struct phy_usb_instance*) ;

__attribute__((used)) static int exynos5_usbdrd_phy_power_on(struct phy *phy)
{
 int ret;
 struct phy_usb_instance *inst = phy_get_drvdata(phy);
 struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);

 dev_dbg(phy_drd->dev, "Request to power_on usbdrd_phy phy\n");

 clk_prepare_enable(phy_drd->ref_clk);
 if (!phy_drd->drv_data->has_common_clk_gate) {
  clk_prepare_enable(phy_drd->pipeclk);
  clk_prepare_enable(phy_drd->utmiclk);
  clk_prepare_enable(phy_drd->itpclk);
 }


 if (phy_drd->vbus_boost) {
  ret = regulator_enable(phy_drd->vbus_boost);
  if (ret) {
   dev_err(phy_drd->dev,
    "Failed to enable VBUS boost supply\n");
   goto fail_vbus;
  }
 }

 if (phy_drd->vbus) {
  ret = regulator_enable(phy_drd->vbus);
  if (ret) {
   dev_err(phy_drd->dev, "Failed to enable VBUS supply\n");
   goto fail_vbus_boost;
  }
 }


 inst->phy_cfg->phy_isol(inst, 0);

 return 0;

fail_vbus_boost:
 if (phy_drd->vbus_boost)
  regulator_disable(phy_drd->vbus_boost);

fail_vbus:
 clk_disable_unprepare(phy_drd->ref_clk);
 if (!phy_drd->drv_data->has_common_clk_gate) {
  clk_disable_unprepare(phy_drd->itpclk);
  clk_disable_unprepare(phy_drd->utmiclk);
  clk_disable_unprepare(phy_drd->pipeclk);
 }

 return ret;
}
