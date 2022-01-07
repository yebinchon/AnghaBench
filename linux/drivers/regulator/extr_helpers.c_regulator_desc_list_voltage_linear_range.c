
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_linear_range {unsigned int min_sel; unsigned int max_sel; int min_uV; unsigned int uV_step; } ;
struct regulator_desc {int n_linear_ranges; struct regulator_linear_range* linear_ranges; } ;


 int BUG_ON (int) ;
 int EINVAL ;

int regulator_desc_list_voltage_linear_range(const struct regulator_desc *desc,
          unsigned int selector)
{
 const struct regulator_linear_range *range;
 int i;

 if (!desc->n_linear_ranges) {
  BUG_ON(!desc->n_linear_ranges);
  return -EINVAL;
 }

 for (i = 0; i < desc->n_linear_ranges; i++) {
  range = &desc->linear_ranges[i];

  if (!(selector >= range->min_sel &&
        selector <= range->max_sel))
   continue;

  selector -= range->min_sel;

  return range->min_uV + (range->uV_step * selector);
 }

 return -EINVAL;
}
