
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp20x_batt_ps {int max_ccc; int dev; TYPE_1__* data; } ;
struct TYPE_2__ {int ccc_offset; int ccc_scale; } ;


 int AXP20X_CHRG_CTRL1_TGT_CURR ;
 int EINVAL ;
 int axp20x_get_constant_charge_current (struct axp20x_batt_ps*,int*) ;
 int axp20x_set_constant_charge_current (struct axp20x_batt_ps*,int) ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static int axp20x_set_max_constant_charge_current(struct axp20x_batt_ps *axp,
        int charge_current)
{
 bool lower_max = 0;

 charge_current = (charge_current - axp->data->ccc_offset) /
  axp->data->ccc_scale;

 if (charge_current > AXP20X_CHRG_CTRL1_TGT_CURR || charge_current < 0)
  return -EINVAL;

 charge_current = charge_current * axp->data->ccc_scale +
  axp->data->ccc_offset;

 if (charge_current > axp->max_ccc)
  dev_warn(axp->dev,
    "Setting max constant charge current higher than previously defined. Note that increasing the constant charge current may damage your battery.\n");
 else
  lower_max = 1;

 axp->max_ccc = charge_current;

 if (lower_max) {
  int current_cc;

  axp20x_get_constant_charge_current(axp, &current_cc);
  if (current_cc > charge_current)
   axp20x_set_constant_charge_current(axp, charge_current);
 }

 return 0;
}
