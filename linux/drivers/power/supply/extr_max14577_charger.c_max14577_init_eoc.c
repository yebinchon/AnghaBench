
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct max14577_charger {TYPE_1__* max14577; } ;
struct TYPE_2__ {int dev_type; int regmap; } ;


 int CHGCTRL5_EOCS_MASK ;
 unsigned int CHGCTRL5_EOCS_SHIFT ;
 int EINVAL ;
 unsigned int MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX ;
 unsigned int MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN ;
 unsigned int MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP ;
 int MAX14577_CHG_REG_CHG_CTRL5 ;


 int max14577_update_reg (int ,int ,int ,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int max14577_init_eoc(struct max14577_charger *chg,
  unsigned int uamp)
{
 unsigned int current_bits = 0xf;
 u8 reg_data;

 switch (chg->max14577->dev_type) {
 case 128:
  if (uamp < 5000)
   return -EINVAL;

  if (uamp >= 7500 && uamp < 10000)
   current_bits = 0x0;
  else if (uamp <= 50000) {

   current_bits = uamp / 5000;
  } else {
   uamp = min(uamp, 100000U) - 50000U;
   current_bits = 0xa + uamp / 10000;
  }
  break;

 case 129:
 default:
  if (uamp < MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN)
   return -EINVAL;

  uamp = min(uamp, MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX);
  uamp -= MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN;
  current_bits = uamp / MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP;
  break;
 }

 reg_data = current_bits << CHGCTRL5_EOCS_SHIFT;

 return max14577_update_reg(chg->max14577->regmap,
   MAX14577_CHG_REG_CHG_CTRL5, CHGCTRL5_EOCS_MASK,
   reg_data);
}
