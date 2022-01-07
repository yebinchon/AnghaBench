
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tps65090_regulator_plat_data {scalar_t__ enable_ext_control; int * reg_init_data; scalar_t__ gpiod; int overcurrent_wait; scalar_t__ overcurrent_wait_valid; } ;
struct tps65090_regulator {scalar_t__ overcurrent_wait_valid; struct tps65090_platform_data* rdev; TYPE_2__* desc; int overcurrent_wait; TYPE_3__* dev; } ;
struct tps65090_platform_data {struct tps65090_regulator_plat_data** reg_pdata; } ;
struct tps65090 {int rmap; TYPE_1__* dev; } ;
struct regulator_dev {struct tps65090_regulator_plat_data** reg_pdata; } ;
struct regulator_config {scalar_t__ ena_gpiod; int * of_node; int * init_data; int regmap; struct tps65090_regulator* driver_data; int dev; } ;
struct TYPE_11__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_regulator_match {int * of_node; } ;
struct TYPE_10__ {int name; int * ops; } ;
struct TYPE_9__ {scalar_t__ of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tps65090_platform_data*) ;
 scalar_t__ IS_ERR_OR_NULL (struct tps65090_platform_data*) ;
 int PTR_ERR (struct tps65090_platform_data*) ;
 int TPS65090_REGULATOR_MAX ;
 int dev_dbg (TYPE_3__*,char*) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct tps65090* dev_get_drvdata (int ) ;
 struct tps65090_platform_data* dev_get_platdata (int ) ;
 int devm_gpiod_unhinge (TYPE_3__*,scalar_t__) ;
 struct tps65090_regulator* devm_kcalloc (TYPE_3__*,int,int,int ) ;
 struct tps65090_platform_data* devm_regulator_register (TYPE_3__*,TYPE_2__*,struct regulator_config*) ;
 scalar_t__ is_dcdc (int) ;
 int platform_set_drvdata (struct platform_device*,struct tps65090_regulator*) ;
 int tps65090_config_ext_control (struct tps65090_regulator*,int) ;
 int tps65090_ext_control_ops ;
 struct tps65090_platform_data* tps65090_parse_dt_reg_data (struct platform_device*,struct of_regulator_match**) ;
 int tps65090_reg_set_overcurrent_wait (struct tps65090_regulator*,struct tps65090_platform_data*) ;
 TYPE_2__* tps65090_regulator_desc ;
 int tps65090_regulator_disable_ext_control (struct tps65090_regulator*,struct tps65090_regulator_plat_data*) ;

__attribute__((used)) static int tps65090_regulator_probe(struct platform_device *pdev)
{
 struct tps65090 *tps65090_mfd = dev_get_drvdata(pdev->dev.parent);
 struct tps65090_regulator *ri = ((void*)0);
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 struct tps65090_regulator_plat_data *tps_pdata;
 struct tps65090_regulator *pmic;
 struct tps65090_platform_data *tps65090_pdata;
 struct of_regulator_match *tps65090_reg_matches = ((void*)0);
 int num;
 int ret;

 dev_dbg(&pdev->dev, "Probing regulator\n");

 tps65090_pdata = dev_get_platdata(pdev->dev.parent);
 if (!tps65090_pdata && tps65090_mfd->dev->of_node)
  tps65090_pdata = tps65090_parse_dt_reg_data(pdev,
     &tps65090_reg_matches);
 if (IS_ERR_OR_NULL(tps65090_pdata)) {
  dev_err(&pdev->dev, "Platform data missing\n");
  return tps65090_pdata ? PTR_ERR(tps65090_pdata) : -EINVAL;
 }

 pmic = devm_kcalloc(&pdev->dev,
       TPS65090_REGULATOR_MAX, sizeof(*pmic),
       GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 for (num = 0; num < TPS65090_REGULATOR_MAX; num++) {
  tps_pdata = tps65090_pdata->reg_pdata[num];

  ri = &pmic[num];
  ri->dev = &pdev->dev;
  ri->desc = &tps65090_regulator_desc[num];
  if (tps_pdata) {
   ri->overcurrent_wait_valid =
    tps_pdata->overcurrent_wait_valid;
   ri->overcurrent_wait = tps_pdata->overcurrent_wait;
  }





  if (tps_pdata && is_dcdc(num) && tps_pdata->reg_init_data) {
   if (tps_pdata->enable_ext_control) {
    config.ena_gpiod = tps_pdata->gpiod;
    ri->desc->ops = &tps65090_ext_control_ops;
   } else {
    ret = tps65090_regulator_disable_ext_control(
      ri, tps_pdata);
    if (ret < 0) {
     dev_err(&pdev->dev,
      "failed disable ext control\n");
     return ret;
    }
   }
  }

  config.dev = pdev->dev.parent;
  config.driver_data = ri;
  config.regmap = tps65090_mfd->rmap;
  if (tps_pdata)
   config.init_data = tps_pdata->reg_init_data;
  else
   config.init_data = ((void*)0);
  if (tps65090_reg_matches)
   config.of_node = tps65090_reg_matches[num].of_node;
  else
   config.of_node = ((void*)0);





  if (config.ena_gpiod)
   devm_gpiod_unhinge(&pdev->dev, config.ena_gpiod);
  rdev = devm_regulator_register(&pdev->dev, ri->desc, &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register regulator %s\n",
    ri->desc->name);
   return PTR_ERR(rdev);
  }
  ri->rdev = rdev;

  if (ri->overcurrent_wait_valid) {
   ret = tps65090_reg_set_overcurrent_wait(ri, rdev);
   if (ret < 0)
    return ret;
  }


  if (tps_pdata && is_dcdc(num) && tps_pdata->reg_init_data &&
    tps_pdata->enable_ext_control) {
   ret = tps65090_config_ext_control(ri, 1);
   if (ret < 0)
    return ret;
  }
 }

 platform_set_drvdata(pdev, pmic);
 return 0;
}
