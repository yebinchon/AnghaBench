
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct spmi_voltage_range {unsigned int n_voltages; unsigned int set_point_min_uV; unsigned int min_uV; unsigned int step_uV; unsigned int range_sel; } ;
struct spmi_regulator {TYPE_1__* set_points; } ;
struct TYPE_2__ {int count; struct spmi_voltage_range* range; } ;


 int EINVAL ;

__attribute__((used)) static int spmi_sw_selector_to_hw(struct spmi_regulator *vreg,
      unsigned selector, u8 *range_sel,
      u8 *voltage_sel)
{
 const struct spmi_voltage_range *range, *end;
 unsigned offset;

 range = vreg->set_points->range;
 end = range + vreg->set_points->count;

 for (; range < end; range++) {
  if (selector < range->n_voltages) {




   offset = range->set_point_min_uV - range->min_uV;
   offset /= range->step_uV;
   *voltage_sel = selector + offset;
   *range_sel = range->range_sel;
   return 0;
  }

  selector -= range->n_voltages;
 }

 return -EINVAL;
}
