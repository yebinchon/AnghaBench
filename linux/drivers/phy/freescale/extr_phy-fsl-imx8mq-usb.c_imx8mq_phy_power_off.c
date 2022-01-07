
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct imx8mq_usb_phy {int vbus; int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct imx8mq_usb_phy* phy_get_drvdata (struct phy*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int imx8mq_phy_power_off(struct phy *phy)
{
 struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);

 clk_disable_unprepare(imx_phy->clk);
 regulator_disable(imx_phy->vbus);

 return 0;
}
