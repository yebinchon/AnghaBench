
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linear_range {unsigned int min; unsigned int step; unsigned int vals; unsigned int low_sel; } ;


 int EINVAL ;

__attribute__((used)) static int find_selector_for_value_low(const struct linear_range *r,
           int selectors, unsigned int val,
           unsigned int *sel, bool *found)
{
 int i;
 int ret = -EINVAL;

 *found = 0;
 for (i = 0; i < selectors; i++) {
  if (r[i].min <= val) {
   if (r[i].min + r[i].step * r[i].vals >= val) {
    *found = 1;
    *sel = r[i].low_sel + (val - r[i].min) /
           r[i].step;
    ret = 0;
    break;
   }




   *sel = r[i].low_sel + r[i].vals;
   ret = 0;
  }
 }
 return ret;
}
