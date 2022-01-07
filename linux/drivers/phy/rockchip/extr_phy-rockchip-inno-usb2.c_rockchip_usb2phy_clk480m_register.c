
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct clk_init_data* init; } ;
struct rockchip_usb2phy {int clk480m; TYPE_1__* dev; TYPE_3__ clk480m_hw; scalar_t__ clk; } ;
struct device_node {int dummy; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int * ops; scalar_t__ flags; } ;
struct TYPE_4__ {struct device_node* of_node; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 char* __clk_get_name (scalar_t__) ;
 int clk_register (TYPE_1__*,TYPE_3__*) ;
 int clk_unregister (int ) ;
 int devm_add_action (TYPE_1__*,int ,struct rockchip_usb2phy*) ;
 int of_clk_add_provider (struct device_node*,int ,int ) ;
 int of_clk_del_provider (struct device_node*) ;
 int of_clk_src_simple_get ;
 int of_property_read_string (struct device_node*,char*,char**) ;
 int rockchip_usb2phy_clk480m_unregister ;
 int rockchip_usb2phy_clkout_ops ;

__attribute__((used)) static int
rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
{
 struct device_node *node = rphy->dev->of_node;
 struct clk_init_data init;
 const char *clk_name;
 int ret;

 init.flags = 0;
 init.name = "clk_usbphy_480m";
 init.ops = &rockchip_usb2phy_clkout_ops;


 of_property_read_string(node, "clock-output-names", &init.name);

 if (rphy->clk) {
  clk_name = __clk_get_name(rphy->clk);
  init.parent_names = &clk_name;
  init.num_parents = 1;
 } else {
  init.parent_names = ((void*)0);
  init.num_parents = 0;
 }

 rphy->clk480m_hw.init = &init;


 rphy->clk480m = clk_register(rphy->dev, &rphy->clk480m_hw);
 if (IS_ERR(rphy->clk480m)) {
  ret = PTR_ERR(rphy->clk480m);
  goto err_ret;
 }

 ret = of_clk_add_provider(node, of_clk_src_simple_get, rphy->clk480m);
 if (ret < 0)
  goto err_clk_provider;

 ret = devm_add_action(rphy->dev, rockchip_usb2phy_clk480m_unregister,
         rphy);
 if (ret < 0)
  goto err_unreg_action;

 return 0;

err_unreg_action:
 of_clk_del_provider(node);
err_clk_provider:
 clk_unregister(rphy->clk480m);
err_ret:
 return ret;
}
