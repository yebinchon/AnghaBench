
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_desc {int name; } ;
struct regulator_config {struct act8945a_pmic* driver_data; TYPE_1__* dev; } ;
struct TYPE_5__ {TYPE_3__* parent; int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct act8945a_pmic {int regmap; } ;
struct TYPE_6__ {int of_node; } ;


 int ACT8945A_SYS_UNLK_REGS ;
 int ARRAY_SIZE (struct regulator_desc*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 struct regulator_desc* act8945a_alt_regulators ;
 struct regulator_desc* act8945a_regulators ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_get_regmap (TYPE_3__*,int *) ;
 struct act8945a_pmic* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,struct regulator_desc const*,struct regulator_config*) ;
 int of_property_read_bool (int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct act8945a_pmic*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int act8945a_pmic_probe(struct platform_device *pdev)
{
 struct regulator_config config = { };
 const struct regulator_desc *regulators;
 struct act8945a_pmic *act8945a;
 struct regulator_dev *rdev;
 int i, num_regulators;
 bool voltage_select;

 act8945a = devm_kzalloc(&pdev->dev, sizeof(*act8945a), GFP_KERNEL);
 if (!act8945a)
  return -ENOMEM;

 act8945a->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!act8945a->regmap) {
  dev_err(&pdev->dev,
   "could not retrieve regmap from parent device\n");
  return -EINVAL;
 }

 voltage_select = of_property_read_bool(pdev->dev.parent->of_node,
            "active-semi,vsel-high");

 if (voltage_select) {
  regulators = act8945a_alt_regulators;
  num_regulators = ARRAY_SIZE(act8945a_alt_regulators);
 } else {
  regulators = act8945a_regulators;
  num_regulators = ARRAY_SIZE(act8945a_regulators);
 }

 config.dev = &pdev->dev;
 config.dev->of_node = pdev->dev.parent->of_node;
 config.driver_data = act8945a;
 for (i = 0; i < num_regulators; i++) {
  rdev = devm_regulator_register(&pdev->dev, &regulators[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev,
    "failed to register %s regulator\n",
    regulators[i].name);
   return PTR_ERR(rdev);
  }
 }

 platform_set_drvdata(pdev, act8945a);


 return regmap_write(act8945a->regmap, ACT8945A_SYS_UNLK_REGS, 0xef);
}
