
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int regmap; TYPE_1__* constraints; } ;
struct chg_reg_data {unsigned int linear_mask; unsigned int min_sel; unsigned int uA_step; int linear_reg; } ;
struct TYPE_2__ {unsigned int min_uA; unsigned int max_uA; } ;


 int EINVAL ;
 struct chg_reg_data* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max77693_chg_get_current_limit(struct regulator_dev *rdev)
{
 const struct chg_reg_data *reg_data = rdev_get_drvdata(rdev);
 unsigned int chg_min_uA = rdev->constraints->min_uA;
 unsigned int chg_max_uA = rdev->constraints->max_uA;
 unsigned int reg, sel;
 unsigned int val;
 int ret;

 ret = regmap_read(rdev->regmap, reg_data->linear_reg, &reg);
 if (ret < 0)
  return ret;

 sel = reg & reg_data->linear_mask;


 if (sel <= reg_data->min_sel)
  sel = 0;
 else
  sel -= reg_data->min_sel;

 val = chg_min_uA + reg_data->uA_step * sel;
 if (val > chg_max_uA)
  return -EINVAL;

 return val;
}
