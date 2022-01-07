
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct mvebu_a3700_utmi {int phy; TYPE_1__* caps; int usb_misc; int regs; } ;
struct TYPE_4__ {int (* power_off ) (int ) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct mvebu_a3700_utmi* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 int devm_phy_create (struct device*,int *,TYPE_2__*) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (int ,struct mvebu_a3700_utmi*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int stub1 (int ) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int mvebu_a3700_utmi_phy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mvebu_a3700_utmi *utmi;
 struct phy_provider *provider;
 struct resource *res;

 utmi = devm_kzalloc(dev, sizeof(*utmi), GFP_KERNEL);
 if (!utmi)
  return -ENOMEM;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "Missing UTMI PHY memory resource\n");
  return -ENODEV;
 }

 utmi->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(utmi->regs))
  return PTR_ERR(utmi->regs);


 utmi->usb_misc = syscon_regmap_lookup_by_phandle(dev->of_node,
        "marvell,usb-misc-reg");
 if (IS_ERR(utmi->usb_misc)) {
  dev_err(dev,
   "Missing USB misc purpose system controller\n");
  return PTR_ERR(utmi->usb_misc);
 }


 utmi->caps = of_device_get_match_data(dev);


 utmi->phy = devm_phy_create(dev, ((void*)0), utmi->caps->ops);
 if (IS_ERR(utmi->phy)) {
  dev_err(dev, "Failed to create the UTMI PHY\n");
  return PTR_ERR(utmi->phy);
 }

 phy_set_drvdata(utmi->phy, utmi);


 utmi->caps->ops->power_off(utmi->phy);

 provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(provider);
}
