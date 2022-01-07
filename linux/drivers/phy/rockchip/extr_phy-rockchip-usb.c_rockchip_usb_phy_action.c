
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_usb_phy {scalar_t__ clk; int clk480m; int np; int uart_enabled; } ;


 int clk_put (scalar_t__) ;
 int clk_unregister (int ) ;
 int of_clk_del_provider (int ) ;

__attribute__((used)) static void rockchip_usb_phy_action(void *data)
{
 struct rockchip_usb_phy *rk_phy = data;

 if (!rk_phy->uart_enabled) {
  of_clk_del_provider(rk_phy->np);
  clk_unregister(rk_phy->clk480m);
 }

 if (rk_phy->clk)
  clk_put(rk_phy->clk);
}
