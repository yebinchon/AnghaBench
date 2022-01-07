
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct dwc2_hsotg {int supplies; scalar_t__ clk; int phy; TYPE_1__* plat; scalar_t__ uphy; int dev; } ;
struct TYPE_2__ {int (* phy_exit ) (struct platform_device*,int ) ;int phy_type; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (scalar_t__) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int stub1 (struct platform_device*,int ) ;
 struct platform_device* to_platform_device (int ) ;
 int usb_phy_shutdown (scalar_t__) ;

__attribute__((used)) static int __dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
{
 struct platform_device *pdev = to_platform_device(hsotg->dev);
 int ret = 0;

 if (hsotg->uphy) {
  usb_phy_shutdown(hsotg->uphy);
 } else if (hsotg->plat && hsotg->plat->phy_exit) {
  ret = hsotg->plat->phy_exit(pdev, hsotg->plat->phy_type);
 } else {
  ret = phy_exit(hsotg->phy);
  if (ret == 0)
   ret = phy_power_off(hsotg->phy);
 }
 if (ret)
  return ret;

 if (hsotg->clk)
  clk_disable_unprepare(hsotg->clk);

 ret = regulator_bulk_disable(ARRAY_SIZE(hsotg->supplies),
         hsotg->supplies);

 return ret;
}
