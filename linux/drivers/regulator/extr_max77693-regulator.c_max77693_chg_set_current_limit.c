
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int regmap; TYPE_1__* constraints; } ;
struct chg_reg_data {int uA_step; int linear_reg; scalar_t__ min_sel; } ;
struct TYPE_2__ {unsigned int min_uA; } ;


 int EINVAL ;
 struct chg_reg_data* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int max77693_chg_set_current_limit(struct regulator_dev *rdev,
      int min_uA, int max_uA)
{
 const struct chg_reg_data *reg_data = rdev_get_drvdata(rdev);
 unsigned int chg_min_uA = rdev->constraints->min_uA;
 int sel = 0;

 while (chg_min_uA + reg_data->uA_step * sel < min_uA)
  sel++;

 if (chg_min_uA + reg_data->uA_step * sel > max_uA)
  return -EINVAL;


 sel += reg_data->min_sel;

 return regmap_write(rdev->regmap, reg_data->linear_reg, sel);
}
