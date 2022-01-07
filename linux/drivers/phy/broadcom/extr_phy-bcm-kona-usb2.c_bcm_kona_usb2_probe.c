
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct bcm_kona_usb {struct phy* regs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 struct phy* devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm_kona_usb* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy* devm_phy_create (struct device*,int *,int *) ;
 int of_phy_simple_xlate ;
 int ops ;
 int phy_set_bus_width (struct phy*,int) ;
 int phy_set_drvdata (struct phy*,struct bcm_kona_usb*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bcm_kona_usb*) ;

__attribute__((used)) static int bcm_kona_usb2_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct bcm_kona_usb *phy;
 struct resource *res;
 struct phy *gphy;
 struct phy_provider *phy_provider;

 phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 phy->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(phy->regs))
  return PTR_ERR(phy->regs);

 platform_set_drvdata(pdev, phy);

 gphy = devm_phy_create(dev, ((void*)0), &ops);
 if (IS_ERR(gphy))
  return PTR_ERR(gphy);


 phy_set_bus_width(gphy, 8);

 phy_set_drvdata(gphy, phy);

 phy_provider = devm_of_phy_provider_register(dev,
   of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
