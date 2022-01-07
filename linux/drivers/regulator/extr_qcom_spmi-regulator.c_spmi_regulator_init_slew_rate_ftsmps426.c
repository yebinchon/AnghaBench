
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spmi_voltage_range {int step_uV; } ;
struct spmi_regulator {int slew_rate; int dev; TYPE_1__* set_points; } ;
struct TYPE_2__ {struct spmi_voltage_range* range; } ;


 int SPMI_COMMON_REG_STEP_CTRL ;
 int SPMI_FTSMPS426_STEP_CTRL_DELAY_MASK ;
 int SPMI_FTSMPS426_STEP_CTRL_DELAY_SHIFT ;
 int SPMI_FTSMPS426_STEP_DELAY ;
 int SPMI_FTSMPS426_STEP_MARGIN_DEN ;
 int SPMI_FTSMPS426_STEP_MARGIN_NUM ;
 int dev_err (int ,char*,int) ;
 int max (int,int) ;
 int spmi_vreg_read (struct spmi_regulator*,int ,int*,int) ;

__attribute__((used)) static int spmi_regulator_init_slew_rate_ftsmps426(struct spmi_regulator *vreg,
         int clock_rate)
{
 int ret;
 u8 reg = 0;
 int delay, slew_rate;
 const struct spmi_voltage_range *range = &vreg->set_points->range[0];

 ret = spmi_vreg_read(vreg, SPMI_COMMON_REG_STEP_CTRL, &reg, 1);
 if (ret) {
  dev_err(vreg->dev, "spmi read failed, ret=%d\n", ret);
  return ret;
 }

 delay = reg & SPMI_FTSMPS426_STEP_CTRL_DELAY_MASK;
 delay >>= SPMI_FTSMPS426_STEP_CTRL_DELAY_SHIFT;


 slew_rate = clock_rate * range->step_uV;
 slew_rate /= 1000 * (SPMI_FTSMPS426_STEP_DELAY << delay);
 slew_rate *= SPMI_FTSMPS426_STEP_MARGIN_NUM;
 slew_rate /= SPMI_FTSMPS426_STEP_MARGIN_DEN;


 vreg->slew_rate = max(slew_rate, 1);

 return ret;
}
