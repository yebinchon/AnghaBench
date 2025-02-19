
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rockchip_usb2phy {struct extcon_dev* edev; TYPE_1__* dev; } ;
struct extcon_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct extcon_dev*) ;
 int PTR_ERR (struct extcon_dev*) ;
 int dev_err (TYPE_1__*,char*) ;
 struct extcon_dev* devm_extcon_dev_allocate (TYPE_1__*,int ) ;
 int devm_extcon_dev_register (TYPE_1__*,struct extcon_dev*) ;
 struct extcon_dev* extcon_get_edev_by_phandle (TYPE_1__*,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int rockchip_usb2phy_extcon_cable ;

__attribute__((used)) static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
{
 int ret;
 struct device_node *node = rphy->dev->of_node;
 struct extcon_dev *edev;

 if (of_property_read_bool(node, "extcon")) {
  edev = extcon_get_edev_by_phandle(rphy->dev, 0);
  if (IS_ERR(edev)) {
   if (PTR_ERR(edev) != -EPROBE_DEFER)
    dev_err(rphy->dev, "Invalid or missing extcon\n");
   return PTR_ERR(edev);
  }
 } else {

  edev = devm_extcon_dev_allocate(rphy->dev,
      rockchip_usb2phy_extcon_cable);

  if (IS_ERR(edev))
   return -ENOMEM;

  ret = devm_extcon_dev_register(rphy->dev, edev);
  if (ret) {
   dev_err(rphy->dev, "failed to register extcon device\n");
   return ret;
  }
 }

 rphy->edev = edev;

 return 0;
}
