
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_usb_phy {int clk480m; scalar_t__ uart_enabled; } ;
struct phy {int dummy; } ;


 int EBUSY ;
 int clk_disable_unprepare (int ) ;
 struct rockchip_usb_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int rockchip_usb_phy_power_off(struct phy *_phy)
{
 struct rockchip_usb_phy *phy = phy_get_drvdata(_phy);

 if (phy->uart_enabled)
  return -EBUSY;

 clk_disable_unprepare(phy->clk480m);

 return 0;
}
