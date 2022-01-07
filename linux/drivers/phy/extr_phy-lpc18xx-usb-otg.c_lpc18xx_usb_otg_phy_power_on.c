
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct lpc18xx_usb_otg_phy {int clk; int reg; } ;


 int LPC18XX_CREG_CREG0 ;
 int LPC18XX_CREG_CREG0_USB0PHY ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct lpc18xx_usb_otg_phy* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int lpc18xx_usb_otg_phy_power_on(struct phy *phy)
{
 struct lpc18xx_usb_otg_phy *lpc = phy_get_drvdata(phy);
 int ret;

 ret = clk_enable(lpc->clk);
 if (ret)
  return ret;


 ret = regmap_update_bits(lpc->reg, LPC18XX_CREG_CREG0,
      LPC18XX_CREG_CREG0_USB0PHY, 0);
 if (ret) {
  clk_disable(lpc->clk);
  return ret;
 }

 return 0;
}
