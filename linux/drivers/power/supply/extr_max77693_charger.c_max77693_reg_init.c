
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_charger {int charge_input_threshold_volt; int batttery_overcurrent; int thermal_regulation_temp; int min_system_volt; int constant_volt; int dev; TYPE_1__* max77693; } ;
struct TYPE_2__ {int regmap; } ;


 int CHG_CNFG_06_CHGPROT_MASK ;
 int CHG_CNFG_06_CHGPROT_SHIFT ;
 int DEFAULT_FAST_CHARGE_TIMER ;
 int DEFAULT_TOP_OFF_THRESHOLD_CURRENT ;
 int DEFAULT_TOP_OFF_TIMER ;
 int MAX77693_CHG_REG_CHG_CNFG_06 ;
 int dev_err (int ,char*,int) ;
 int max77693_set_batttery_overcurrent (struct max77693_charger*,int ) ;
 int max77693_set_charge_input_threshold_volt (struct max77693_charger*,int ) ;
 int max77693_set_constant_volt (struct max77693_charger*,int ) ;
 int max77693_set_fast_charge_timer (struct max77693_charger*,int ) ;
 int max77693_set_min_system_volt (struct max77693_charger*,int ) ;
 int max77693_set_thermal_regulation_temp (struct max77693_charger*,int ) ;
 int max77693_set_top_off_threshold_current (struct max77693_charger*,int ) ;
 int max77693_set_top_off_timer (struct max77693_charger*,int ) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77693_reg_init(struct max77693_charger *chg)
{
 int ret;
 unsigned int data;


 data = (0x3 << CHG_CNFG_06_CHGPROT_SHIFT);
 ret = regmap_update_bits(chg->max77693->regmap,
    MAX77693_CHG_REG_CHG_CNFG_06,
    CHG_CNFG_06_CHGPROT_MASK, data);
 if (ret) {
  dev_err(chg->dev, "Error unlocking registers: %d\n", ret);
  return ret;
 }

 ret = max77693_set_fast_charge_timer(chg, DEFAULT_FAST_CHARGE_TIMER);
 if (ret)
  return ret;

 ret = max77693_set_top_off_threshold_current(chg,
   DEFAULT_TOP_OFF_THRESHOLD_CURRENT);
 if (ret)
  return ret;

 ret = max77693_set_top_off_timer(chg, DEFAULT_TOP_OFF_TIMER);
 if (ret)
  return ret;

 ret = max77693_set_constant_volt(chg, chg->constant_volt);
 if (ret)
  return ret;

 ret = max77693_set_min_system_volt(chg, chg->min_system_volt);
 if (ret)
  return ret;

 ret = max77693_set_thermal_regulation_temp(chg,
   chg->thermal_regulation_temp);
 if (ret)
  return ret;

 ret = max77693_set_batttery_overcurrent(chg, chg->batttery_overcurrent);
 if (ret)
  return ret;

 return max77693_set_charge_input_threshold_volt(chg,
   chg->charge_input_threshold_volt);
}
