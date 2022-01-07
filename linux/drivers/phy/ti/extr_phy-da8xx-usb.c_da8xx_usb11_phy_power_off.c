
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct da8xx_usb_phy {int usb11_clk; int regmap; } ;


 int CFGCHIP (int) ;
 int CFGCHIP2_USB1SUSPENDM ;
 int clk_disable_unprepare (int ) ;
 struct da8xx_usb_phy* phy_get_drvdata (struct phy*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int da8xx_usb11_phy_power_off(struct phy *phy)
{
 struct da8xx_usb_phy *d_phy = phy_get_drvdata(phy);

 regmap_write_bits(d_phy->regmap, CFGCHIP(2), CFGCHIP2_USB1SUSPENDM, 0);

 clk_disable_unprepare(d_phy->usb11_clk);

 return 0;
}
