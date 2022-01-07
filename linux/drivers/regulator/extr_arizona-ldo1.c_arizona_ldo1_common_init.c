
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regulator_desc {int dummy; } ;
struct regulator_config {int of_node; TYPE_2__* init_data; int ena_gpiod; int regmap; struct arizona_ldo1* driver_data; struct device* dev; } ;
struct TYPE_7__ {struct device* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device {int dummy; } ;
struct arizona_ldo1_pdata {TYPE_2__* init_data; } ;
struct TYPE_6__ {scalar_t__ num_consumer_supplies; TYPE_1__* consumer_supplies; } ;
struct TYPE_5__ {char* supply; int dev_name; } ;
struct arizona_ldo1 {int regulator; TYPE_2__ init_data; int ena_gpiod; int regmap; TYPE_1__ supply; } ;


 int CONFIG_OF ;
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int arizona_ldo1_of_get_pdata (struct arizona_ldo1_pdata*,struct regulator_config*,struct regulator_desc const*,int*) ;
 int dev_err (TYPE_3__*,char*,int) ;
 int dev_get_platdata (struct device*) ;
 int dev_name (struct device*) ;
 int devm_regulator_register (TYPE_3__*,struct regulator_desc const*,struct regulator_config*) ;
 int gpiod_get_optional (struct device*,char*,int) ;
 int of_node_put (int ) ;
 int platform_set_drvdata (struct platform_device*,struct arizona_ldo1*) ;

__attribute__((used)) static int arizona_ldo1_common_init(struct platform_device *pdev,
        struct arizona_ldo1 *ldo1,
        const struct regulator_desc *desc,
        struct arizona_ldo1_pdata *pdata,
        bool *external_dcvdd)
{
 struct device *parent_dev = pdev->dev.parent;
 struct regulator_config config = { };
 int ret;

 *external_dcvdd = 0;

 ldo1->supply.supply = "DCVDD";
 ldo1->init_data.consumer_supplies = &ldo1->supply;
 ldo1->supply.dev_name = dev_name(parent_dev);

 config.dev = parent_dev;
 config.driver_data = ldo1;
 config.regmap = ldo1->regmap;

 if (IS_ENABLED(CONFIG_OF)) {
  if (!dev_get_platdata(parent_dev)) {
   ret = arizona_ldo1_of_get_pdata(pdata,
       &config, desc,
       external_dcvdd);
   if (ret < 0)
    return ret;
  }
 }





 config.ena_gpiod = gpiod_get_optional(parent_dev, "wlf,ldoena",
    GPIOD_OUT_LOW | GPIOD_FLAGS_BIT_NONEXCLUSIVE);
 if (IS_ERR(config.ena_gpiod))
  return PTR_ERR(config.ena_gpiod);

 ldo1->ena_gpiod = config.ena_gpiod;

 if (pdata->init_data)
  config.init_data = pdata->init_data;
 else
  config.init_data = &ldo1->init_data;





 if (config.init_data->num_consumer_supplies == 0)
  *external_dcvdd = 1;

 ldo1->regulator = devm_regulator_register(&pdev->dev, desc, &config);

 of_node_put(config.of_node);

 if (IS_ERR(ldo1->regulator)) {
  ret = PTR_ERR(ldo1->regulator);
  dev_err(&pdev->dev, "Failed to register LDO1 supply: %d\n",
   ret);
  return ret;
 }

 platform_set_drvdata(pdev, ldo1);

 return 0;
}
