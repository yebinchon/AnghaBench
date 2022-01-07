
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct lpc18xx_usb_otg_phy {int clk; } ;


 int clk_prepare (int ) ;
 int clk_set_rate (int ,int) ;
 struct lpc18xx_usb_otg_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int lpc18xx_usb_otg_phy_init(struct phy *phy)
{
 struct lpc18xx_usb_otg_phy *lpc = phy_get_drvdata(phy);
 int ret;


 ret = clk_set_rate(lpc->clk, 480000000);
 if (ret)
  return ret;

 return clk_prepare(lpc->clk);
}
