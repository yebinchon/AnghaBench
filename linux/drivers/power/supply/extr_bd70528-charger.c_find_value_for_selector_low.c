
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linear_range {unsigned int low_sel; unsigned int vals; unsigned int min; unsigned int step; } ;


 int EINVAL ;

__attribute__((used)) static int find_value_for_selector_low(const struct linear_range *r,
           int selectors, unsigned int sel,
           unsigned int *val)
{
 int i;

 for (i = 0; i < selectors; i++) {
  if (r[i].low_sel <= sel && r[i].low_sel + r[i].vals >= sel) {
   *val = r[i].min + (sel - r[i].low_sel) * r[i].step;
   return 0;
  }
 }
 return -EINVAL;
}
