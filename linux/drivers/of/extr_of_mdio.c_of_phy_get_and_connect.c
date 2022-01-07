
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
typedef scalar_t__ phy_interface_t ;


 int netdev_err (struct net_device*,char*) ;
 scalar_t__ of_get_phy_mode (struct device_node*) ;
 struct device_node* of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 struct phy_device* of_phy_connect (struct net_device*,struct device_node*,void (*) (struct net_device*),int ,scalar_t__) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 int of_phy_register_fixed_link (struct device_node*) ;

struct phy_device *of_phy_get_and_connect(struct net_device *dev,
       struct device_node *np,
       void (*hndlr)(struct net_device *))
{
 phy_interface_t iface;
 struct device_node *phy_np;
 struct phy_device *phy;
 int ret;

 iface = of_get_phy_mode(np);
 if ((int)iface < 0)
  return ((void*)0);
 if (of_phy_is_fixed_link(np)) {
  ret = of_phy_register_fixed_link(np);
  if (ret < 0) {
   netdev_err(dev, "broken fixed-link specification\n");
   return ((void*)0);
  }
  phy_np = of_node_get(np);
 } else {
  phy_np = of_parse_phandle(np, "phy-handle", 0);
  if (!phy_np)
   return ((void*)0);
 }

 phy = of_phy_connect(dev, phy_np, hndlr, 0, iface);

 of_node_put(phy_np);

 return phy;
}
