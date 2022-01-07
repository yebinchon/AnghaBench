
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_4__ {int v_mask; int reg_b; int reg_a; } ;
struct TYPE_3__ {int sel_mask; int reg; } ;
struct da9055_regulator_info {TYPE_2__ volt; TYPE_1__ conf; } ;
struct da9055_regulator {scalar_t__ reg_rselect; int da9055; struct da9055_regulator_info* info; } ;


 int DA9055_REGUALTOR_SET_A ;
 unsigned int DA9055_SEL_REG_A ;
 scalar_t__ NO_GPIO ;
 int da9055_reg_read (int ,int ) ;
 int da9055_reg_update (int ,int ,int,unsigned int) ;
 struct da9055_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int da9055_regulator_set_voltage_sel(struct regulator_dev *rdev,
         unsigned int selector)
{
 struct da9055_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9055_regulator_info *info = regulator->info;
 int ret;





 if (regulator->reg_rselect == NO_GPIO) {

  ret = da9055_reg_update(regulator->da9055, info->conf.reg,
     info->conf.sel_mask, DA9055_SEL_REG_A);
  if (ret < 0)
   return ret;


  return da9055_reg_update(regulator->da9055, info->volt.reg_a,
      info->volt.v_mask, selector);
 }






 ret = da9055_reg_read(regulator->da9055, info->conf.reg);
 if (ret < 0)
  return ret;

 ret &= info->conf.sel_mask;


 if (ret == DA9055_REGUALTOR_SET_A)
  return da9055_reg_update(regulator->da9055, info->volt.reg_a,
      info->volt.v_mask, selector);
 else
  return da9055_reg_update(regulator->da9055, info->volt.reg_b,
      info->volt.v_mask, selector);
}
