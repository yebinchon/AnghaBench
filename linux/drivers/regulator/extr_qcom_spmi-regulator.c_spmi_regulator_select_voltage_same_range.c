
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spmi_voltage_range {int min_uV; int max_uV; int step_uV; } ;
struct spmi_regulator {TYPE_2__* set_points; } ;
struct TYPE_4__ {int count; int n_voltages; TYPE_1__* range; } ;
struct TYPE_3__ {int set_point_min_uV; int set_point_max_uV; int step_uV; scalar_t__ n_voltages; } ;


 int DIV_ROUND_UP (int,int) ;
 struct spmi_voltage_range* spmi_regulator_find_range (struct spmi_regulator*) ;
 int spmi_regulator_select_voltage (struct spmi_regulator*,int,int) ;

__attribute__((used)) static int spmi_regulator_select_voltage_same_range(struct spmi_regulator *vreg,
  int min_uV, int max_uV)
{
 const struct spmi_voltage_range *range;
 int uV = min_uV;
 int i, selector;

 range = spmi_regulator_find_range(vreg);
 if (!range)
  goto different_range;

 if (uV < range->min_uV && max_uV >= range->min_uV)
  uV = range->min_uV;

 if (uV < range->min_uV || uV > range->max_uV) {

  goto different_range;
 }





 uV = DIV_ROUND_UP(uV - range->min_uV, range->step_uV);
 uV = uV * range->step_uV + range->min_uV;

 if (uV > max_uV) {




  goto different_range;
 }

 selector = 0;
 for (i = 0; i < vreg->set_points->count; i++) {
  if (uV >= vreg->set_points->range[i].set_point_min_uV
      && uV <= vreg->set_points->range[i].set_point_max_uV) {
   selector +=
       (uV - vreg->set_points->range[i].set_point_min_uV)
    / vreg->set_points->range[i].step_uV;
   break;
  }

  selector += vreg->set_points->range[i].n_voltages;
 }

 if (selector >= vreg->set_points->n_voltages)
  goto different_range;

 return selector;

different_range:
 return spmi_regulator_select_voltage(vreg, min_uV, max_uV);
}
