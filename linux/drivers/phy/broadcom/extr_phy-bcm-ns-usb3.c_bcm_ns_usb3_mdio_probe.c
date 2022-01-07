
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct phy_provider {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct device {int of_node; } ;
struct mdio_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct bcm_ns_usb3 {int family; int phy; int phy_write; int dmp; struct mdio_device* mdiodev; struct device* dev; } ;
typedef enum bcm_ns_family { ____Placeholder_bcm_ns_family } bcm_ns_family ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int bcm_ns_usb3_id_table ;
 int bcm_ns_usb3_mdiodev_phy_write ;
 int dev_err (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm_ns_usb3* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 int devm_phy_create (struct device*,int *,int *) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_phy_simple_xlate ;
 int ops ;
 int phy_set_drvdata (int ,struct bcm_ns_usb3*) ;

__attribute__((used)) static int bcm_ns_usb3_mdio_probe(struct mdio_device *mdiodev)
{
 struct device *dev = &mdiodev->dev;
 const struct of_device_id *of_id;
 struct phy_provider *phy_provider;
 struct device_node *syscon_np;
 struct bcm_ns_usb3 *usb3;
 struct resource res;
 int err;

 usb3 = devm_kzalloc(dev, sizeof(*usb3), GFP_KERNEL);
 if (!usb3)
  return -ENOMEM;

 usb3->dev = dev;
 usb3->mdiodev = mdiodev;

 of_id = of_match_device(bcm_ns_usb3_id_table, dev);
 if (!of_id)
  return -EINVAL;
 usb3->family = (enum bcm_ns_family)of_id->data;

 syscon_np = of_parse_phandle(dev->of_node, "usb3-dmp-syscon", 0);
 err = of_address_to_resource(syscon_np, 0, &res);
 of_node_put(syscon_np);
 if (err)
  return err;

 usb3->dmp = devm_ioremap_resource(dev, &res);
 if (IS_ERR(usb3->dmp)) {
  dev_err(dev, "Failed to map DMP regs\n");
  return PTR_ERR(usb3->dmp);
 }

 usb3->phy_write = bcm_ns_usb3_mdiodev_phy_write;

 usb3->phy = devm_phy_create(dev, ((void*)0), &ops);
 if (IS_ERR(usb3->phy)) {
  dev_err(dev, "Failed to create PHY\n");
  return PTR_ERR(usb3->phy);
 }

 phy_set_drvdata(usb3->phy, usb3);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
