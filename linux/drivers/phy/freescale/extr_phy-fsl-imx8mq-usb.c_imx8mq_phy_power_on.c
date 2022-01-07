
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct imx8mq_usb_phy {int clk; int vbus; } ;


 int clk_prepare_enable (int ) ;
 struct imx8mq_usb_phy* phy_get_drvdata (struct phy*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int imx8mq_phy_power_on(struct phy *phy)
{
 struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
 int ret;

 ret = regulator_enable(imx_phy->vbus);
 if (ret)
  return ret;

 return clk_prepare_enable(imx_phy->clk);
}
