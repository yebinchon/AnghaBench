
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun9i_usb_phy {int clk; int hsic_clk; int reset; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun9i_usb_phy* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;
 int sun9i_usb_phy_passby (struct sun9i_usb_phy*,int ) ;

__attribute__((used)) static int sun9i_usb_phy_exit(struct phy *_phy)
{
 struct sun9i_usb_phy *phy = phy_get_drvdata(_phy);

 sun9i_usb_phy_passby(phy, 0);
 reset_control_assert(phy->reset);
 clk_disable_unprepare(phy->hsic_clk);
 clk_disable_unprepare(phy->clk);

 return 0;
}
