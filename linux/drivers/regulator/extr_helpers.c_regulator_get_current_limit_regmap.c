
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int csel_mask; int* curr_table; unsigned int n_current_limits; int csel_reg; } ;


 int EINVAL ;
 int ffs (unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

int regulator_get_current_limit_regmap(struct regulator_dev *rdev)
{
 unsigned int val;
 int ret;

 ret = regmap_read(rdev->regmap, rdev->desc->csel_reg, &val);
 if (ret != 0)
  return ret;

 val &= rdev->desc->csel_mask;
 val >>= ffs(rdev->desc->csel_mask) - 1;

 if (rdev->desc->curr_table) {
  if (val >= rdev->desc->n_current_limits)
   return -EINVAL;

  return rdev->desc->curr_table[val];
 }

 return -EINVAL;
}
