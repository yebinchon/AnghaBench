
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_usb2phy {int clk480m; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int clk_unregister (int ) ;
 int of_clk_del_provider (int ) ;

__attribute__((used)) static void rockchip_usb2phy_clk480m_unregister(void *data)
{
 struct rockchip_usb2phy *rphy = data;

 of_clk_del_provider(rphy->dev->of_node);
 clk_unregister(rphy->clk480m);
}
