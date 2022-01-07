
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct stw481x {int map; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int init_data; int of_node; int regmap; struct stw481x* driver_data; TYPE_1__* dev; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int STW_CONF2 ;
 int STW_CONF2_VMMC_EXT ;
 int dev_err (TYPE_1__*,char*) ;
 struct stw481x* dev_get_platdata (TYPE_1__*) ;
 int dev_info (TYPE_1__*,char*) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,int *,struct regulator_config*) ;
 int of_get_regulator_init_data (TYPE_1__*,int ,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int vmmc_regulator ;

__attribute__((used)) static int stw481x_vmmc_regulator_probe(struct platform_device *pdev)
{
 struct stw481x *stw481x = dev_get_platdata(&pdev->dev);
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 int ret;


 ret = regmap_update_bits(stw481x->map, STW_CONF2,
     STW_CONF2_VMMC_EXT, 0);
 if (ret) {
  dev_err(&pdev->dev, "could not disable external VMMC\n");
  return ret;
 }


 config.dev = &pdev->dev;
 config.driver_data = stw481x;
 config.regmap = stw481x->map;
 config.of_node = pdev->dev.of_node;
 config.init_data = of_get_regulator_init_data(&pdev->dev,
            pdev->dev.of_node,
            &vmmc_regulator);

 rdev = devm_regulator_register(&pdev->dev, &vmmc_regulator, &config);
 if (IS_ERR(rdev)) {
  dev_err(&pdev->dev,
   "error initializing STw481x VMMC regulator\n");
  return PTR_ERR(rdev);
 }

 dev_info(&pdev->dev, "initialized STw481x VMMC regulator\n");
 return 0;
}
