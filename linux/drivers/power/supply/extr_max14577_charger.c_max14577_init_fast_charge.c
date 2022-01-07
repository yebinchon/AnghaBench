
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct maxim_charger_current {int dummy; } ;
struct max14577_charger {TYPE_1__* max14577; int dev; } ;
struct TYPE_2__ {size_t dev_type; int regmap; } ;


 int CHGCTRL4_MBCICHWRCH_MASK ;
 int CHGCTRL4_MBCICHWRCL_MASK ;
 int MAX14577_CHG_REG_CHG_CTRL4 ;
 int dev_err (int ,char*,unsigned int) ;
 int max14577_update_reg (int ,int ,int,int ) ;
 int maxim_charger_calc_reg_current (struct maxim_charger_current const*,unsigned int,unsigned int,int *) ;
 struct maxim_charger_current* maxim_charger_currents ;

__attribute__((used)) static int max14577_init_fast_charge(struct max14577_charger *chg,
  unsigned int uamp)
{
 u8 reg_data;
 int ret;
 const struct maxim_charger_current *limits =
  &maxim_charger_currents[chg->max14577->dev_type];

 ret = maxim_charger_calc_reg_current(limits, uamp, uamp, &reg_data);
 if (ret) {
  dev_err(chg->dev, "Wrong value for fast charge: %u\n", uamp);
  return ret;
 }

 return max14577_update_reg(chg->max14577->regmap,
   MAX14577_CHG_REG_CHG_CTRL4,
   CHGCTRL4_MBCICHWRCL_MASK | CHGCTRL4_MBCICHWRCH_MASK,
   reg_data);
}
