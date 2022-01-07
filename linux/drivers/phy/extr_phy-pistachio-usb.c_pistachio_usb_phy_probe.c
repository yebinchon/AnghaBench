
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pistachio_usb_phy {TYPE_1__* dev; int refclk; struct phy_provider* phy_clk; struct phy_provider* cr_top; } ;
struct phy_provider {int dummy; } ;
typedef struct phy_provider phy ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct phy_provider* devm_clk_get (TYPE_1__*,char*) ;
 struct pistachio_usb_phy* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (TYPE_1__*,int ) ;
 struct phy_provider* devm_phy_create (TYPE_1__*,int *,int *) ;
 int of_phy_simple_xlate ;
 int of_property_read_u32 (int ,char*,int *) ;
 int phy_set_drvdata (struct phy_provider*,struct pistachio_usb_phy*) ;
 int pistachio_usb_phy_ops ;
 int platform_set_drvdata (struct platform_device*,struct pistachio_usb_phy*) ;
 struct phy_provider* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int pistachio_usb_phy_probe(struct platform_device *pdev)
{
 struct pistachio_usb_phy *p_phy;
 struct phy_provider *provider;
 struct phy *phy;
 int ret;

 p_phy = devm_kzalloc(&pdev->dev, sizeof(*p_phy), GFP_KERNEL);
 if (!p_phy)
  return -ENOMEM;
 p_phy->dev = &pdev->dev;
 platform_set_drvdata(pdev, p_phy);

 p_phy->cr_top = syscon_regmap_lookup_by_phandle(p_phy->dev->of_node,
       "img,cr-top");
 if (IS_ERR(p_phy->cr_top)) {
  dev_err(p_phy->dev, "Failed to get CR_TOP registers: %ld\n",
   PTR_ERR(p_phy->cr_top));
  return PTR_ERR(p_phy->cr_top);
 }

 p_phy->phy_clk = devm_clk_get(p_phy->dev, "usb_phy");
 if (IS_ERR(p_phy->phy_clk)) {
  dev_err(p_phy->dev, "Failed to get usb_phy clock: %ld\n",
   PTR_ERR(p_phy->phy_clk));
  return PTR_ERR(p_phy->phy_clk);
 }

 ret = of_property_read_u32(p_phy->dev->of_node, "img,refclk",
       &p_phy->refclk);
 if (ret < 0) {
  dev_err(p_phy->dev, "No reference clock selector specified\n");
  return ret;
 }

 phy = devm_phy_create(p_phy->dev, ((void*)0), &pistachio_usb_phy_ops);
 if (IS_ERR(phy)) {
  dev_err(p_phy->dev, "Failed to create PHY: %ld\n",
   PTR_ERR(phy));
  return PTR_ERR(phy);
 }
 phy_set_drvdata(phy, p_phy);

 provider = devm_of_phy_provider_register(p_phy->dev,
       of_phy_simple_xlate);
 if (IS_ERR(provider)) {
  dev_err(p_phy->dev, "Failed to register PHY provider: %ld\n",
   PTR_ERR(provider));
  return PTR_ERR(provider);
 }

 return 0;
}
