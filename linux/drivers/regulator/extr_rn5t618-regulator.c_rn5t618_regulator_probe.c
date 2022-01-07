
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rn5t618 {int variant; int regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_desc {int name; } ;
struct regulator_config {int regmap; int dev; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (struct regulator_desc*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;



 int dev_err (TYPE_1__*,char*,int ) ;
 struct rn5t618* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,struct regulator_desc const*,struct regulator_config*) ;
 struct regulator_desc* rc5t619_regulators ;
 struct regulator_desc* rn5t567_regulators ;
 struct regulator_desc* rn5t618_regulators ;

__attribute__((used)) static int rn5t618_regulator_probe(struct platform_device *pdev)
{
 struct rn5t618 *rn5t618 = dev_get_drvdata(pdev->dev.parent);
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 const struct regulator_desc *regulators;
 int i;
 int num_regulators = 0;

 switch (rn5t618->variant) {
 case 129:
  regulators = rn5t567_regulators;
  num_regulators = ARRAY_SIZE(rn5t567_regulators);
  break;
 case 128:
  regulators = rn5t618_regulators;
  num_regulators = ARRAY_SIZE(rn5t618_regulators);
  break;
 case 130:
  regulators = rc5t619_regulators;
  num_regulators = ARRAY_SIZE(rc5t619_regulators);
  break;
 default:
  return -EINVAL;
 }

 config.dev = pdev->dev.parent;
 config.regmap = rn5t618->regmap;

 for (i = 0; i < num_regulators; i++) {
  rdev = devm_regulator_register(&pdev->dev,
            &regulators[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register %s regulator\n",
    regulators[i].name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
