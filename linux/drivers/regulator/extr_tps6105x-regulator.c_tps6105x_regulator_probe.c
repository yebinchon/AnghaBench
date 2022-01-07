
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps6105x_platform_data {scalar_t__ mode; int regulator_data; } ;
struct tps6105x {TYPE_1__* client; int regulator; int regmap; struct tps6105x_platform_data* pdata; } ;
struct regulator_config {int regmap; struct tps6105x* driver_data; int init_data; int * dev; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ TPS6105X_MODE_VOLTAGE ;
 int dev_err (int *,char*) ;
 struct tps6105x* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 int devm_regulator_register (int *,int *,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct tps6105x*) ;
 int tps6105x_regulator_desc ;

__attribute__((used)) static int tps6105x_regulator_probe(struct platform_device *pdev)
{
 struct tps6105x *tps6105x = dev_get_platdata(&pdev->dev);
 struct tps6105x_platform_data *pdata = tps6105x->pdata;
 struct regulator_config config = { };
 int ret;


 if (pdata->mode != TPS6105X_MODE_VOLTAGE) {
  dev_info(&pdev->dev,
   "chip not in voltage mode mode, exit probe\n");
  return 0;
 }

 config.dev = &tps6105x->client->dev;
 config.init_data = pdata->regulator_data;
 config.driver_data = tps6105x;
 config.regmap = tps6105x->regmap;


 tps6105x->regulator = devm_regulator_register(&pdev->dev,
            &tps6105x_regulator_desc,
            &config);
 if (IS_ERR(tps6105x->regulator)) {
  ret = PTR_ERR(tps6105x->regulator);
  dev_err(&tps6105x->client->dev,
   "failed to register regulator\n");
  return ret;
 }
 platform_set_drvdata(pdev, tps6105x);

 return 0;
}
