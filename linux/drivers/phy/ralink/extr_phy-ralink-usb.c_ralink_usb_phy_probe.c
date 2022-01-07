
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct ralink_usb_phy {uintptr_t clk; int * phy; int * rstdev; int * rsthost; int * base; int * sysctl; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct ralink_usb_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 int * devm_phy_create (struct device*,int *,int *) ;
 void* devm_reset_control_get (struct device*,char*) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (int *,struct ralink_usb_phy*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int ralink_usb_phy_of_match ;
 int ralink_usb_phy_ops ;
 int * syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int ralink_usb_phy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct phy_provider *phy_provider;
 const struct of_device_id *match;
 struct ralink_usb_phy *phy;

 match = of_match_device(ralink_usb_phy_of_match, &pdev->dev);
 if (!match)
  return -ENODEV;

 phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 phy->clk = (uintptr_t)match->data;
 phy->base = ((void*)0);

 phy->sysctl = syscon_regmap_lookup_by_phandle(dev->of_node, "ralink,sysctl");
 if (IS_ERR(phy->sysctl)) {
  dev_err(dev, "failed to get sysctl registers\n");
  return PTR_ERR(phy->sysctl);
 }


 if (of_device_is_compatible(dev->of_node, "mediatek,mt7628-usbphy")) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  phy->base = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(phy->base)) {
   dev_err(dev, "failed to remap register memory\n");
   return PTR_ERR(phy->base);
  }
 }

 phy->rsthost = devm_reset_control_get(&pdev->dev, "host");
 if (IS_ERR(phy->rsthost)) {
  dev_err(dev, "host reset is missing\n");
  return PTR_ERR(phy->rsthost);
 }

 phy->rstdev = devm_reset_control_get(&pdev->dev, "device");
 if (IS_ERR(phy->rstdev)) {
  dev_err(dev, "device reset is missing\n");
  return PTR_ERR(phy->rstdev);
 }

 phy->phy = devm_phy_create(dev, ((void*)0), &ralink_usb_phy_ops);
 if (IS_ERR(phy->phy)) {
  dev_err(dev, "failed to create PHY\n");
  return PTR_ERR(phy->phy);
 }
 phy_set_drvdata(phy->phy, phy);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
