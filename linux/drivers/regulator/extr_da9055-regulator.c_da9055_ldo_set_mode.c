
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9055_volt_reg {int sl_shift; int reg_b; } ;
struct da9055_regulator_info {struct da9055_volt_reg volt; } ;
struct da9055_regulator {int da9055; struct da9055_regulator_info* info; } ;


 int DA9055_LDO_MODE_SLEEP ;
 int DA9055_LDO_MODE_SYNC ;



 int da9055_reg_update (int ,int ,int,int) ;
 struct da9055_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int da9055_ldo_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct da9055_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9055_regulator_info *info = regulator->info;
 struct da9055_volt_reg volt = info->volt;
 int val = 0;

 switch (mode) {
 case 129:
 case 130:
  val = DA9055_LDO_MODE_SYNC;
  break;
 case 128:
  val = DA9055_LDO_MODE_SLEEP;
  break;
 }

 return da9055_reg_update(regulator->da9055, volt.reg_b,
     1 << volt.sl_shift,
     val << volt.sl_shift);
}
