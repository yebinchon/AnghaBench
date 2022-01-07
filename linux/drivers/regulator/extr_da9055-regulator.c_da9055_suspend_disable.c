
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int sel_mask; int reg; } ;
struct da9055_regulator_info {TYPE_1__ conf; } ;
struct da9055_regulator {scalar_t__ reg_rselect; int da9055; struct da9055_regulator_info* info; } ;


 int DA9055_SEL_REG_A ;
 scalar_t__ NO_GPIO ;
 int da9055_reg_update (int ,int ,int ,int ) ;
 struct da9055_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int da9055_suspend_disable(struct regulator_dev *rdev)
{
 struct da9055_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9055_regulator_info *info = regulator->info;


 if (regulator->reg_rselect == NO_GPIO)
  return da9055_reg_update(regulator->da9055, info->conf.reg,
     info->conf.sel_mask, DA9055_SEL_REG_A);
 else
  return 0;
}
