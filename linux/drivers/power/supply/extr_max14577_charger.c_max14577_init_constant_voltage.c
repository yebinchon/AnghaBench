
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max14577_charger {TYPE_1__* max14577; } ;
struct TYPE_2__ {int regmap; } ;


 int CHGCTRL3_MBCCVWRC_SHIFT ;
 int EINVAL ;
 int MAX14577_CHG_REG_CHG_CTRL3 ;
 unsigned int MAXIM_CHARGER_CONSTANT_VOLTAGE_MAX ;
 unsigned int MAXIM_CHARGER_CONSTANT_VOLTAGE_MIN ;
 unsigned int MAXIM_CHARGER_CONSTANT_VOLTAGE_STEP ;
 int max14577_write_reg (int ,int ,int) ;

__attribute__((used)) static int max14577_init_constant_voltage(struct max14577_charger *chg,
  unsigned int uvolt)
{
 u8 reg_data;

 if (uvolt < MAXIM_CHARGER_CONSTANT_VOLTAGE_MIN ||
   uvolt > MAXIM_CHARGER_CONSTANT_VOLTAGE_MAX)
  return -EINVAL;

 if (uvolt == 4200000)
  reg_data = 0x0;
 else if (uvolt == MAXIM_CHARGER_CONSTANT_VOLTAGE_MAX)
  reg_data = 0x1f;
 else if (uvolt <= 4280000) {
  unsigned int val = uvolt;

  val -= MAXIM_CHARGER_CONSTANT_VOLTAGE_MIN;
  val /= MAXIM_CHARGER_CONSTANT_VOLTAGE_STEP;
  if (uvolt <= 4180000)
   reg_data = 0x1 + val;
  else
   reg_data = val;
 } else
  return -EINVAL;

 reg_data <<= CHGCTRL3_MBCCVWRC_SHIFT;

 return max14577_write_reg(chg->max14577->regmap,
   MAX14577_CHG_REG_CHG_CTRL3, reg_data);
}
