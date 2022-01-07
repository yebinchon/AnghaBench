
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct bcm_ns_usb2 {int phy; int ref_clk; int dmu; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm_ns_usb2* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 int devm_phy_create (struct device*,int *,int *) ;
 int of_phy_simple_xlate ;
 int ops ;
 int phy_set_drvdata (int ,struct bcm_ns_usb2*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct bcm_ns_usb2*) ;

__attribute__((used)) static int bcm_ns_usb2_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct bcm_ns_usb2 *usb2;
 struct resource *res;
 struct phy_provider *phy_provider;

 usb2 = devm_kzalloc(&pdev->dev, sizeof(*usb2), GFP_KERNEL);
 if (!usb2)
  return -ENOMEM;
 usb2->dev = dev;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dmu");
 usb2->dmu = devm_ioremap_resource(dev, res);
 if (IS_ERR(usb2->dmu)) {
  dev_err(dev, "Failed to map DMU regs\n");
  return PTR_ERR(usb2->dmu);
 }

 usb2->ref_clk = devm_clk_get(dev, "phy-ref-clk");
 if (IS_ERR(usb2->ref_clk)) {
  dev_err(dev, "Clock not defined\n");
  return PTR_ERR(usb2->ref_clk);
 }

 usb2->phy = devm_phy_create(dev, ((void*)0), &ops);
 if (IS_ERR(usb2->phy))
  return PTR_ERR(usb2->phy);

 phy_set_drvdata(usb2->phy, usb2);
 platform_set_drvdata(pdev, usb2);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 return PTR_ERR_OR_ZERO(phy_provider);
}
