
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp20x_batt_ps {int max_ccc; int regmap; TYPE_1__* data; } ;
struct TYPE_2__ {int ccc_offset; int ccc_scale; } ;


 int AXP20X_CHRG_CTRL1 ;
 int AXP20X_CHRG_CTRL1_TGT_CURR ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int axp20x_set_constant_charge_current(struct axp20x_batt_ps *axp_batt,
           int charge_current)
{
 if (charge_current > axp_batt->max_ccc)
  return -EINVAL;

 charge_current = (charge_current - axp_batt->data->ccc_offset) /
  axp_batt->data->ccc_scale;

 if (charge_current > AXP20X_CHRG_CTRL1_TGT_CURR || charge_current < 0)
  return -EINVAL;

 return regmap_update_bits(axp_batt->regmap, AXP20X_CHRG_CTRL1,
      AXP20X_CHRG_CTRL1_TGT_CURR, charge_current);
}
