
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_control {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct am335x_control_usb {struct phy_control phy_ctrl; } ;


 struct device* bus_find_device (int *,int *,struct device_node*,int ) ;
 struct am335x_control_usb* dev_get_drvdata (struct device*) ;
 int match ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_bus_type ;
 int put_device (struct device*) ;

struct phy_control *am335x_get_phy_control(struct device *dev)
{
 struct device_node *node;
 struct am335x_control_usb *ctrl_usb;

 node = of_parse_phandle(dev->of_node, "ti,ctrl_mod", 0);
 if (!node)
  return ((void*)0);

 dev = bus_find_device(&platform_bus_type, ((void*)0), node, match);
 of_node_put(node);
 if (!dev)
  return ((void*)0);

 ctrl_usb = dev_get_drvdata(dev);
 put_device(dev);
 if (!ctrl_usb)
  return ((void*)0);
 return &ctrl_usb->phy_ctrl;
}
