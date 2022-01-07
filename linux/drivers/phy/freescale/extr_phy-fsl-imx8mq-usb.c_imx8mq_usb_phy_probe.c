
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct imx8mq_usb_phy {int phy; int vbus; int base; int clk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct imx8mq_usb_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 int devm_phy_create (struct device*,int *,int *) ;
 int devm_regulator_get (struct device*,char*) ;
 int imx8mq_usb_phy_ops ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (int ,struct imx8mq_usb_phy*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int imx8mq_usb_phy_probe(struct platform_device *pdev)
{
 struct phy_provider *phy_provider;
 struct device *dev = &pdev->dev;
 struct imx8mq_usb_phy *imx_phy;
 struct resource *res;

 imx_phy = devm_kzalloc(dev, sizeof(*imx_phy), GFP_KERNEL);
 if (!imx_phy)
  return -ENOMEM;

 imx_phy->clk = devm_clk_get(dev, "phy");
 if (IS_ERR(imx_phy->clk)) {
  dev_err(dev, "failed to get imx8mq usb phy clock\n");
  return PTR_ERR(imx_phy->clk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 imx_phy->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(imx_phy->base))
  return PTR_ERR(imx_phy->base);

 imx_phy->phy = devm_phy_create(dev, ((void*)0), &imx8mq_usb_phy_ops);
 if (IS_ERR(imx_phy->phy))
  return PTR_ERR(imx_phy->phy);

 imx_phy->vbus = devm_regulator_get(dev, "vbus");
 if (IS_ERR(imx_phy->vbus))
  return PTR_ERR(imx_phy->vbus);

 phy_set_drvdata(imx_phy->phy, imx_phy);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
