
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_desc {int name; int id; } ;
struct regulator_config {int regmap; int of_node; int init_data; struct max14577* driver_data; int dev; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max14577_platform_data {TYPE_1__* regulators; } ;
struct max14577 {int dev_type; int dev; } ;
typedef enum maxim_device_type { ____Placeholder_maxim_device_type } maxim_device_type ;
struct TYPE_4__ {int of_node; int initdata; } ;


 unsigned int ARRAY_SIZE (struct regulator_desc*) ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;


 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_2__*,char*,int,int ,int) ;
 struct max14577* dev_get_drvdata (int ) ;
 struct max14577_platform_data* dev_get_platdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,struct regulator_desc const*,struct regulator_config*) ;
 int max14577_get_regmap (struct max14577*,int ) ;
 struct regulator_desc* max14577_supported_regulators ;
 struct regulator_desc* max77836_supported_regulators ;

__attribute__((used)) static int max14577_regulator_probe(struct platform_device *pdev)
{
 struct max14577 *max14577 = dev_get_drvdata(pdev->dev.parent);
 struct max14577_platform_data *pdata = dev_get_platdata(max14577->dev);
 int i, ret = 0;
 struct regulator_config config = {};
 const struct regulator_desc *supported_regulators;
 unsigned int supported_regulators_size;
 enum maxim_device_type dev_type = max14577->dev_type;

 switch (dev_type) {
 case 128:
  supported_regulators = max77836_supported_regulators;
  supported_regulators_size = ARRAY_SIZE(max77836_supported_regulators);
  break;
 case 129:
 default:
  supported_regulators = max14577_supported_regulators;
  supported_regulators_size = ARRAY_SIZE(max14577_supported_regulators);
 }

 config.dev = max14577->dev;
 config.driver_data = max14577;

 for (i = 0; i < supported_regulators_size; i++) {
  struct regulator_dev *regulator;




  if (pdata && pdata->regulators) {
   config.init_data = pdata->regulators[i].initdata;
   config.of_node = pdata->regulators[i].of_node;
  }
  config.regmap = max14577_get_regmap(max14577,
    supported_regulators[i].id);

  regulator = devm_regulator_register(&pdev->dev,
    &supported_regulators[i], &config);
  if (IS_ERR(regulator)) {
   ret = PTR_ERR(regulator);
   dev_err(&pdev->dev,
     "Regulator init failed for %d/%s with error: %d\n",
     i, supported_regulators[i].name, ret);
   return ret;
  }
 }

 return ret;
}
