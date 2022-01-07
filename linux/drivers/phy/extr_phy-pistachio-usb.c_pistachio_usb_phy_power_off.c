
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_usb_phy {int phy_clk; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct pistachio_usb_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int pistachio_usb_phy_power_off(struct phy *phy)
{
 struct pistachio_usb_phy *p_phy = phy_get_drvdata(phy);

 clk_disable_unprepare(p_phy->phy_clk);

 return 0;
}
