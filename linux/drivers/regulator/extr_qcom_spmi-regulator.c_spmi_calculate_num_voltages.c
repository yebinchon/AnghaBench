
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_voltage_set_points {int count; unsigned int n_voltages; struct spmi_voltage_range* range; } ;
struct spmi_voltage_range {unsigned int set_point_max_uV; unsigned int set_point_min_uV; unsigned int step_uV; unsigned int n_voltages; } ;



__attribute__((used)) static void spmi_calculate_num_voltages(struct spmi_voltage_set_points *points)
{
 unsigned int n;
 struct spmi_voltage_range *range = points->range;

 for (; range < points->range + points->count; range++) {
  n = 0;
  if (range->set_point_max_uV) {
   n = range->set_point_max_uV - range->set_point_min_uV;
   n = (n / range->step_uV) + 1;
  }
  range->n_voltages = n;
  points->n_voltages += n;
 }
}
