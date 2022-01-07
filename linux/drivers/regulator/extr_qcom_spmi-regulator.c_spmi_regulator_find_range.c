
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct spmi_voltage_range {scalar_t__ range_sel; } ;
struct spmi_regulator {TYPE_1__* set_points; } ;
struct TYPE_2__ {int count; struct spmi_voltage_range* range; } ;


 int SPMI_COMMON_REG_VOLTAGE_RANGE ;
 int spmi_vreg_read (struct spmi_regulator*,int ,scalar_t__*,int) ;

__attribute__((used)) static const struct spmi_voltage_range *
spmi_regulator_find_range(struct spmi_regulator *vreg)
{
 u8 range_sel;
 const struct spmi_voltage_range *range, *end;

 range = vreg->set_points->range;
 end = range + vreg->set_points->count;

 spmi_vreg_read(vreg, SPMI_COMMON_REG_VOLTAGE_RANGE, &range_sel, 1);

 for (; range < end; range++)
  if (range->range_sel == range_sel)
   return range;

 return ((void*)0);
}
