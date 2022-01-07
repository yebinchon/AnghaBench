
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct da8xx_usb_phy {int regmap; int usb20_clk; } ;


 int CFGCHIP (int) ;
 int CFGCHIP2_OTGPWRDN ;
 int clk_prepare_enable (int ) ;
 struct da8xx_usb_phy* phy_get_drvdata (struct phy*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int da8xx_usb20_phy_power_on(struct phy *phy)
{
 struct da8xx_usb_phy *d_phy = phy_get_drvdata(phy);
 int ret;

 ret = clk_prepare_enable(d_phy->usb20_clk);
 if (ret)
  return ret;

 regmap_write_bits(d_phy->regmap, CFGCHIP(2), CFGCHIP2_OTGPWRDN, 0);

 return 0;
}
