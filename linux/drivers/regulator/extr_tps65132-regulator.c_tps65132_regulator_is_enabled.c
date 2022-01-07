
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65132_regulator {struct tps65132_reg_pdata* reg_pdata; } ;
struct tps65132_reg_pdata {int ena_gpio_state; int en_gpiod; } ;
struct regulator_dev {int dummy; } ;


 int IS_ERR (int ) ;
 struct tps65132_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int tps65132_regulator_is_enabled(struct regulator_dev *rdev)
{
 struct tps65132_regulator *tps = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[id];

 if (!IS_ERR(rpdata->en_gpiod))
  return rpdata->ena_gpio_state;

 return 1;
}
