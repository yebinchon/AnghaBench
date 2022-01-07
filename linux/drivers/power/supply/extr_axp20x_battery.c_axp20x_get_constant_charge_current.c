
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp20x_batt_ps {TYPE_1__* data; int regmap; } ;
struct TYPE_2__ {int ccc_scale; int ccc_offset; } ;


 int AXP20X_CHRG_CTRL1 ;
 int AXP20X_CHRG_CTRL1_TGT_CURR ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int axp20x_get_constant_charge_current(struct axp20x_batt_ps *axp,
           int *val)
{
 int ret;

 ret = regmap_read(axp->regmap, AXP20X_CHRG_CTRL1, val);
 if (ret)
  return ret;

 *val &= AXP20X_CHRG_CTRL1_TGT_CURR;

 *val = *val * axp->data->ccc_scale + axp->data->ccc_offset;

 return 0;
}
