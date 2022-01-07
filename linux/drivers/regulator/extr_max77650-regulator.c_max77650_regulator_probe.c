
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regulator_config {struct max77650_regulator_desc* driver_data; struct device* dev; } ;
struct regmap {int dummy; } ;
struct device {scalar_t__ of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct max77650_regulator_desc {int desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;




 int MAX77650_CID_BITS (unsigned int) ;
 size_t MAX77650_REGULATOR_ID_LDO ;
 size_t MAX77650_REGULATOR_ID_SBB0 ;
 size_t MAX77650_REGULATOR_ID_SBB1 ;
 size_t MAX77650_REGULATOR_ID_SBB2 ;
 int MAX77650_REGULATOR_NUM_REGULATORS ;
 int MAX77650_REG_CID ;
 int PTR_ERR (struct regulator_dev*) ;
 struct regmap* dev_get_regmap (struct device*,int *) ;
 struct max77650_regulator_desc** devm_kcalloc (struct device*,int,int,int ) ;
 struct regulator_dev* devm_regulator_register (struct device*,int *,struct regulator_config*) ;
 struct max77650_regulator_desc max77650_LDO_desc ;
 struct max77650_regulator_desc max77650_SBB0_desc ;
 struct max77650_regulator_desc max77650_SBB1_desc ;
 struct max77650_regulator_desc max77650_SBB2_desc ;
 struct max77650_regulator_desc max77651_SBB1_desc ;
 struct max77650_regulator_desc max77651_SBB2_desc ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int max77650_regulator_probe(struct platform_device *pdev)
{
 struct max77650_regulator_desc **rdescs;
 struct max77650_regulator_desc *rdesc;
 struct regulator_config config = { };
 struct device *dev, *parent;
 struct regulator_dev *rdev;
 struct regmap *map;
 unsigned int val;
 int i, rv;

 dev = &pdev->dev;
 parent = dev->parent;

 if (!dev->of_node)
  dev->of_node = parent->of_node;

 rdescs = devm_kcalloc(dev, MAX77650_REGULATOR_NUM_REGULATORS,
         sizeof(*rdescs), GFP_KERNEL);
 if (!rdescs)
  return -ENOMEM;

 map = dev_get_regmap(parent, ((void*)0));
 if (!map)
  return -ENODEV;

 rv = regmap_read(map, MAX77650_REG_CID, &val);
 if (rv)
  return rv;

 rdescs[MAX77650_REGULATOR_ID_LDO] = &max77650_LDO_desc;
 rdescs[MAX77650_REGULATOR_ID_SBB0] = &max77650_SBB0_desc;

 switch (MAX77650_CID_BITS(val)) {
 case 131:
 case 130:
  rdescs[MAX77650_REGULATOR_ID_SBB1] = &max77650_SBB1_desc;
  rdescs[MAX77650_REGULATOR_ID_SBB2] = &max77650_SBB2_desc;
  break;
 case 129:
 case 128:
  rdescs[MAX77650_REGULATOR_ID_SBB1] = &max77651_SBB1_desc;
  rdescs[MAX77650_REGULATOR_ID_SBB2] = &max77651_SBB2_desc;
  break;
 default:
  return -ENODEV;
 }

 config.dev = parent;

 for (i = 0; i < MAX77650_REGULATOR_NUM_REGULATORS; i++) {
  rdesc = rdescs[i];
  config.driver_data = rdesc;

  rdev = devm_regulator_register(dev, &rdesc->desc, &config);
  if (IS_ERR(rdev))
   return PTR_ERR(rdev);
 }

 return 0;
}
