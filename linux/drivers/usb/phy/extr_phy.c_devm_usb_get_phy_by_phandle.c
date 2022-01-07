
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_phy {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 struct usb_phy* ERR_PTR (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 struct usb_phy* devm_usb_get_phy_by_node (struct device*,struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char const*,int ) ;

struct usb_phy *devm_usb_get_phy_by_phandle(struct device *dev,
 const char *phandle, u8 index)
{
 struct device_node *node;
 struct usb_phy *phy;

 if (!dev->of_node) {
  dev_dbg(dev, "device does not have a device node entry\n");
  return ERR_PTR(-EINVAL);
 }

 node = of_parse_phandle(dev->of_node, phandle, index);
 if (!node) {
  dev_dbg(dev, "failed to get %s phandle in %pOF node\n", phandle,
   dev->of_node);
  return ERR_PTR(-ENODEV);
 }
 phy = devm_usb_get_phy_by_node(dev, node, ((void*)0));
 of_node_put(node);
 return phy;
}
