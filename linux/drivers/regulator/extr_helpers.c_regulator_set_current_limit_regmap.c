
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int n_current_limits; unsigned int* curr_table; int csel_mask; int csel_reg; } ;


 int EINVAL ;
 int ffs (int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;

int regulator_set_current_limit_regmap(struct regulator_dev *rdev,
           int min_uA, int max_uA)
{
 unsigned int n_currents = rdev->desc->n_current_limits;
 int i, sel = -1;

 if (n_currents == 0)
  return -EINVAL;

 if (rdev->desc->curr_table) {
  const unsigned int *curr_table = rdev->desc->curr_table;
  bool ascend = curr_table[n_currents - 1] > curr_table[0];


  if (ascend) {
   for (i = n_currents - 1; i >= 0; i--) {
    if (min_uA <= curr_table[i] &&
        curr_table[i] <= max_uA) {
     sel = i;
     break;
    }
   }
  } else {
   for (i = 0; i < n_currents; i++) {
    if (min_uA <= curr_table[i] &&
        curr_table[i] <= max_uA) {
     sel = i;
     break;
    }
   }
  }
 }

 if (sel < 0)
  return -EINVAL;

 sel <<= ffs(rdev->desc->csel_mask) - 1;

 return regmap_update_bits(rdev->regmap, rdev->desc->csel_reg,
      rdev->desc->csel_mask, sel);
}
