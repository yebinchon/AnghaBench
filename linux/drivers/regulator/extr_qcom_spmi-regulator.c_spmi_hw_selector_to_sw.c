
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct spmi_voltage_range {unsigned int set_point_min_uV; unsigned int min_uV; unsigned int step_uV; unsigned int set_point_max_uV; scalar_t__ n_voltages; } ;
struct spmi_regulator {TYPE_1__* set_points; } ;
struct TYPE_2__ {int count; struct spmi_voltage_range* range; } ;


 int EINVAL ;

__attribute__((used)) static int spmi_hw_selector_to_sw(struct spmi_regulator *vreg, u8 hw_sel,
      const struct spmi_voltage_range *range)
{
 unsigned sw_sel = 0;
 unsigned offset, max_hw_sel;
 const struct spmi_voltage_range *r = vreg->set_points->range;
 const struct spmi_voltage_range *end = r + vreg->set_points->count;

 for (; r < end; r++) {
  if (r == range && range->n_voltages) {






   offset = range->set_point_min_uV - range->min_uV;
   offset /= range->step_uV;
   if (hw_sel < offset)
    return -EINVAL;

   max_hw_sel = range->set_point_max_uV - range->min_uV;
   max_hw_sel /= range->step_uV;
   if (hw_sel > max_hw_sel)
    return -EINVAL;

   return sw_sel + hw_sel - offset;
  }
  sw_sel += r->n_voltages;
 }

 return -EINVAL;
}
