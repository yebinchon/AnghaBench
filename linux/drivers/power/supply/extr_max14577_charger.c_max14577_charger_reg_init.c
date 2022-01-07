
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct regmap {int dummy; } ;
struct max14577_charger {TYPE_2__* pdata; int dev; TYPE_1__* max14577; } ;
struct TYPE_4__ {int ovp_uvolt; int fast_charge_uamp; int eoc_uamp; int constant_uvolt; } ;
struct TYPE_3__ {struct regmap* regmap; } ;


 int CDETCTRL1_CHGDETEN_MASK ;
 int CDETCTRL1_CHGDETEN_SHIFT ;
 int CDETCTRL1_CHGTYPMAN_MASK ;
 int CHGCTRL2_MBCHOSTEN_SHIFT ;
 int CHGCTRL2_VCHGR_RC_SHIFT ;
 int CHGCTRL6_AUTOSTOP_SHIFT ;
 int CHGCTRL7_OTPCGHCVS_SHIFT ;
 int EINVAL ;
 int MAX14577_REG_CDETCTRL1 ;
 int MAX14577_REG_CHGCTRL2 ;
 int MAX14577_REG_CHGCTRL6 ;
 int MAX14577_REG_CHGCTRL7 ;
 int MAXIM_CHARGER_FAST_CHARGE_TIMER_DEFAULT ;
 int dev_err (int ,char*,int) ;
 int max14577_init_constant_voltage (struct max14577_charger*,int ) ;
 int max14577_init_eoc (struct max14577_charger*,int ) ;
 int max14577_init_fast_charge (struct max14577_charger*,int ) ;
 int max14577_set_fast_charge_timer (struct max14577_charger*,int ) ;
 int max14577_update_reg (struct regmap*,int ,int,int) ;
 int max14577_write_reg (struct regmap*,int ,int) ;

__attribute__((used)) static int max14577_charger_reg_init(struct max14577_charger *chg)
{
 struct regmap *rmap = chg->max14577->regmap;
 u8 reg_data;
 int ret;






 reg_data = 0x1 << CDETCTRL1_CHGDETEN_SHIFT;
 max14577_update_reg(rmap, MAX14577_REG_CDETCTRL1,
   CDETCTRL1_CHGDETEN_MASK | CDETCTRL1_CHGTYPMAN_MASK,
   reg_data);





 reg_data = 0x1 << CHGCTRL2_VCHGR_RC_SHIFT;
 reg_data |= 0x1 << CHGCTRL2_MBCHOSTEN_SHIFT;
 max14577_write_reg(rmap, MAX14577_REG_CHGCTRL2, reg_data);


 reg_data = 0x0 << CHGCTRL6_AUTOSTOP_SHIFT;
 max14577_write_reg(rmap, MAX14577_REG_CHGCTRL6, reg_data);

 ret = max14577_init_constant_voltage(chg, chg->pdata->constant_uvolt);
 if (ret)
  return ret;

 ret = max14577_init_eoc(chg, chg->pdata->eoc_uamp);
 if (ret)
  return ret;

 ret = max14577_init_fast_charge(chg, chg->pdata->fast_charge_uamp);
 if (ret)
  return ret;

 ret = max14577_set_fast_charge_timer(chg,
   MAXIM_CHARGER_FAST_CHARGE_TIMER_DEFAULT);
 if (ret)
  return ret;


 switch (chg->pdata->ovp_uvolt) {
 case 7500000:
  reg_data = 0x0;
  break;
 case 6000000:
 case 6500000:
 case 7000000:
  reg_data = 0x1 + (chg->pdata->ovp_uvolt - 6000000) / 500000;
  break;
 default:
  dev_err(chg->dev, "Wrong value for OVP: %u\n",
    chg->pdata->ovp_uvolt);
  return -EINVAL;
 }
 reg_data <<= CHGCTRL7_OTPCGHCVS_SHIFT;
 max14577_write_reg(rmap, MAX14577_REG_CHGCTRL7, reg_data);

 return 0;
}
