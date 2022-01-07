
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regmap {int dummy; } ;
struct max14577_charger {TYPE_1__* max14577; } ;
struct TYPE_2__ {struct regmap* regmap; } ;


 int CHGCTRL2_MBCHOSTEN_MASK ;
 int MAX14577_CHG_REG_CHG_CTRL2 ;
 int MAX14577_CHG_REG_STATUS3 ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int STATUS3_CGMBC_MASK ;
 int STATUS3_EOC_MASK ;
 int max14577_read_reg (struct regmap*,int ,int*) ;

__attribute__((used)) static int max14577_get_charger_state(struct max14577_charger *chg, int *val)
{
 struct regmap *rmap = chg->max14577->regmap;
 int ret;
 u8 reg_data;
 ret = max14577_read_reg(rmap, MAX14577_CHG_REG_CHG_CTRL2, &reg_data);
 if (ret < 0)
  goto out;

 if ((reg_data & CHGCTRL2_MBCHOSTEN_MASK) == 0) {
  *val = POWER_SUPPLY_STATUS_DISCHARGING;
  goto out;
 }

 ret = max14577_read_reg(rmap, MAX14577_CHG_REG_STATUS3, &reg_data);
 if (ret < 0)
  goto out;

 if (reg_data & STATUS3_CGMBC_MASK) {

  if (reg_data & STATUS3_EOC_MASK)
   *val = POWER_SUPPLY_STATUS_FULL;
  else
   *val = POWER_SUPPLY_STATUS_CHARGING;
  goto out;
 }

 *val = POWER_SUPPLY_STATUS_DISCHARGING;

out:
 return ret;
}
