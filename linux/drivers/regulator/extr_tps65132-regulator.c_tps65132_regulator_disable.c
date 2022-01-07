
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65132_regulator {struct tps65132_reg_pdata* reg_pdata; } ;
struct tps65132_reg_pdata {int act_dis_gpiod; scalar_t__ act_dis_time_us; scalar_t__ ena_gpio_state; int en_gpiod; } ;
struct regulator_dev {int dummy; } ;


 int IS_ERR (int ) ;
 scalar_t__ TPS65132_ACT_DIS_TIME_SLACK ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct tps65132_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int tps65132_regulator_disable(struct regulator_dev *rdev)
{
 struct tps65132_regulator *tps = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[id];

 if (!IS_ERR(rpdata->en_gpiod)) {
  gpiod_set_value_cansleep(rpdata->en_gpiod, 0);
  rpdata->ena_gpio_state = 0;
 }

 if (!IS_ERR(rpdata->act_dis_gpiod)) {
  gpiod_set_value_cansleep(rpdata->act_dis_gpiod, 1);
  usleep_range(rpdata->act_dis_time_us, rpdata->act_dis_time_us +
        TPS65132_ACT_DIS_TIME_SLACK);
  gpiod_set_value_cansleep(rpdata->act_dis_gpiod, 0);
 }

 return 0;
}
