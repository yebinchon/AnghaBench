
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun9i_usb_phy {scalar_t__ type; void* phy; void* pmu; void* reset; void* clk; void* hsic_clk; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 scalar_t__ USBPHY_INTERFACE_MODE_HSIC ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct sun9i_usb_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 void* devm_phy_create (struct device*,int *,int *) ;
 void* devm_reset_control_get (struct device*,char*) ;
 int of_phy_simple_xlate ;
 scalar_t__ of_usb_get_phy_mode (struct device_node*) ;
 int phy_set_drvdata (void*,struct sun9i_usb_phy*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int sun9i_usb_phy_ops ;

__attribute__((used)) static int sun9i_usb_phy_probe(struct platform_device *pdev)
{
 struct sun9i_usb_phy *phy;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct phy_provider *phy_provider;
 struct resource *res;

 phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 phy->type = of_usb_get_phy_mode(np);
 if (phy->type == USBPHY_INTERFACE_MODE_HSIC) {
  phy->clk = devm_clk_get(dev, "hsic_480M");
  if (IS_ERR(phy->clk)) {
   dev_err(dev, "failed to get hsic_480M clock\n");
   return PTR_ERR(phy->clk);
  }

  phy->hsic_clk = devm_clk_get(dev, "hsic_12M");
  if (IS_ERR(phy->hsic_clk)) {
   dev_err(dev, "failed to get hsic_12M clock\n");
   return PTR_ERR(phy->hsic_clk);
  }

  phy->reset = devm_reset_control_get(dev, "hsic");
  if (IS_ERR(phy->reset)) {
   dev_err(dev, "failed to get reset control\n");
   return PTR_ERR(phy->reset);
  }
 } else {
  phy->clk = devm_clk_get(dev, "phy");
  if (IS_ERR(phy->clk)) {
   dev_err(dev, "failed to get phy clock\n");
   return PTR_ERR(phy->clk);
  }

  phy->reset = devm_reset_control_get(dev, "phy");
  if (IS_ERR(phy->reset)) {
   dev_err(dev, "failed to get reset control\n");
   return PTR_ERR(phy->reset);
  }
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 phy->pmu = devm_ioremap_resource(dev, res);
 if (IS_ERR(phy->pmu))
  return PTR_ERR(phy->pmu);

 phy->phy = devm_phy_create(dev, ((void*)0), &sun9i_usb_phy_ops);
 if (IS_ERR(phy->phy)) {
  dev_err(dev, "failed to create PHY\n");
  return PTR_ERR(phy->phy);
 }

 phy_set_drvdata(phy->phy, phy);
 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
