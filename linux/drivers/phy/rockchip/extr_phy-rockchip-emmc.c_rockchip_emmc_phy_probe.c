
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct rockchip_emmc_phy {unsigned int reg_offset; int drive_impedance; struct regmap* reg_base; } ;
struct regmap {int dummy; } ;
struct device {int of_node; TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef struct regmap phy ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PHYCTRL_DR_50OHM ;
 int PTR_ERR (struct regmap*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int convert_drive_impedance_ohm (struct platform_device*,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 struct rockchip_emmc_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct regmap* devm_phy_create (struct device*,int ,int *) ;
 int of_phy_simple_xlate ;
 scalar_t__ of_property_read_u32 (int ,char*,unsigned int*) ;
 int ops ;
 int phy_set_drvdata (struct regmap*,struct rockchip_emmc_phy*) ;
 struct regmap* syscon_node_to_regmap (int ) ;

__attribute__((used)) static int rockchip_emmc_phy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rockchip_emmc_phy *rk_phy;
 struct phy *generic_phy;
 struct phy_provider *phy_provider;
 struct regmap *grf;
 unsigned int reg_offset;
 u32 val;

 if (!dev->parent || !dev->parent->of_node)
  return -ENODEV;

 grf = syscon_node_to_regmap(dev->parent->of_node);
 if (IS_ERR(grf)) {
  dev_err(dev, "Missing rockchip,grf property\n");
  return PTR_ERR(grf);
 }

 rk_phy = devm_kzalloc(dev, sizeof(*rk_phy), GFP_KERNEL);
 if (!rk_phy)
  return -ENOMEM;

 if (of_property_read_u32(dev->of_node, "reg", &reg_offset)) {
  dev_err(dev, "missing reg property in node %pOFn\n",
   dev->of_node);
  return -EINVAL;
 }

 rk_phy->reg_offset = reg_offset;
 rk_phy->reg_base = grf;
 rk_phy->drive_impedance = PHYCTRL_DR_50OHM;

 if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", &val))
  rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);

 generic_phy = devm_phy_create(dev, dev->of_node, &ops);
 if (IS_ERR(generic_phy)) {
  dev_err(dev, "failed to create PHY\n");
  return PTR_ERR(generic_phy);
 }

 phy_set_drvdata(generic_phy, rk_phy);
 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
