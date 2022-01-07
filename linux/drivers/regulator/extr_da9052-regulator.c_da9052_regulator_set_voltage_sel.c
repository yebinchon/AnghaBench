
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct da9052_regulator_info {unsigned int activate_bit; } ;
struct da9052_regulator {int da9052; struct da9052_regulator_info* info; } ;
struct TYPE_2__ {unsigned int vsel_mask; int vsel_reg; } ;







 int DA9052_SUPPLY_REG ;
 int da9052_reg_update (int ,int ,unsigned int,unsigned int) ;
 struct da9052_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int da9052_regulator_set_voltage_sel(struct regulator_dev *rdev,
         unsigned int selector)
{
 struct da9052_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9052_regulator_info *info = regulator->info;
 int id = rdev_get_id(rdev);
 int ret;

 ret = da9052_reg_update(regulator->da9052, rdev->desc->vsel_reg,
    rdev->desc->vsel_mask, selector);
 if (ret < 0)
  return ret;




 switch (id) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  ret = da9052_reg_update(regulator->da9052, DA9052_SUPPLY_REG,
     info->activate_bit, info->activate_bit);
  break;
 }

 return ret;
}
