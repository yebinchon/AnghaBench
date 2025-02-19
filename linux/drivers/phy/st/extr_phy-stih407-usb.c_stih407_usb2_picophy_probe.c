
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih407_usb2_picophy {struct phy_provider* phy; int ctrl; int param; struct phy_provider* regmap; struct phy_provider* rstport; struct phy_provider* rstc; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef struct phy_provider phy ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PHYCTRL_REG ;
 int PHYPARAM_REG ;
 int PTR_ERR (struct phy_provider*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct stih407_usb2_picophy*) ;
 struct stih407_usb2_picophy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int *,int *) ;
 struct phy_provider* devm_reset_control_get_exclusive (struct device*,char*) ;
 struct phy_provider* devm_reset_control_get_shared (struct device*,char*) ;
 int of_phy_simple_xlate ;
 int of_property_read_u32_index (struct device_node*,char*,int ,int *) ;
 int phy_set_drvdata (struct phy_provider*,struct stih407_usb2_picophy*) ;
 int reset_control_assert (struct phy_provider*) ;
 int stih407_usb2_picophy_data ;
 struct phy_provider* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int stih407_usb2_picophy_probe(struct platform_device *pdev)
{
 struct stih407_usb2_picophy *phy_dev;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct phy_provider *phy_provider;
 struct phy *phy;
 int ret;

 phy_dev = devm_kzalloc(dev, sizeof(*phy_dev), GFP_KERNEL);
 if (!phy_dev)
  return -ENOMEM;

 phy_dev->dev = dev;
 dev_set_drvdata(dev, phy_dev);

 phy_dev->rstc = devm_reset_control_get_shared(dev, "global");
 if (IS_ERR(phy_dev->rstc)) {
  dev_err(dev, "failed to ctrl picoPHY reset\n");
  return PTR_ERR(phy_dev->rstc);
 }

 phy_dev->rstport = devm_reset_control_get_exclusive(dev, "port");
 if (IS_ERR(phy_dev->rstport)) {
  dev_err(dev, "failed to ctrl picoPHY reset\n");
  return PTR_ERR(phy_dev->rstport);
 }


 reset_control_assert(phy_dev->rstport);

 phy_dev->regmap = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
 if (IS_ERR(phy_dev->regmap)) {
  dev_err(dev, "No syscfg phandle specified\n");
  return PTR_ERR(phy_dev->regmap);
 }

 ret = of_property_read_u32_index(np, "st,syscfg", PHYPARAM_REG,
     &phy_dev->param);
 if (ret) {
  dev_err(dev, "can't get phyparam offset (%d)\n", ret);
  return ret;
 }

 ret = of_property_read_u32_index(np, "st,syscfg", PHYCTRL_REG,
     &phy_dev->ctrl);
 if (ret) {
  dev_err(dev, "can't get phyctrl offset (%d)\n", ret);
  return ret;
 }

 phy = devm_phy_create(dev, ((void*)0), &stih407_usb2_picophy_data);
 if (IS_ERR(phy)) {
  dev_err(dev, "failed to create Display Port PHY\n");
  return PTR_ERR(phy);
 }

 phy_dev->phy = phy;
 phy_set_drvdata(phy, phy_dev);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 if (IS_ERR(phy_provider))
  return PTR_ERR(phy_provider);

 dev_info(dev, "STiH407 USB Generic picoPHY driver probed!");

 return 0;
}
