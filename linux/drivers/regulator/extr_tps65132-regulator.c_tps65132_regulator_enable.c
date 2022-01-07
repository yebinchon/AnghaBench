
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65132_regulator {int dev; struct tps65132_reg_pdata* reg_pdata; } ;
struct tps65132_reg_pdata {int ena_gpio_state; int en_gpiod; } ;
struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {scalar_t__ active_discharge; } ;


 int IS_ERR (int ) ;
 scalar_t__ REGULATOR_ACTIVE_DISCHARGE_DISABLE ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct tps65132_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regulator_set_active_discharge_regmap (struct regulator_dev*,int) ;

__attribute__((used)) static int tps65132_regulator_enable(struct regulator_dev *rdev)
{
 struct tps65132_regulator *tps = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[id];
 int ret;

 if (!IS_ERR(rpdata->en_gpiod)) {
  gpiod_set_value_cansleep(rpdata->en_gpiod, 1);
  rpdata->ena_gpio_state = 1;
 }


 if (rdev->constraints->active_discharge ==
   REGULATOR_ACTIVE_DISCHARGE_DISABLE) {
  ret = regulator_set_active_discharge_regmap(rdev, 0);
  if (ret < 0) {
   dev_err(tps->dev, "Failed to disable active discharge: %d\n",
    ret);
   return ret;
  }
 }

 return 0;
}
