
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp288_fg_info {int status; int max_volt; int lock; TYPE_1__* pdev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int dev; } ;


 int AXP20X_FG_RES ;
 int AXP20X_PWR_OP_MODE ;
 int AXP288_FG_CC_MTR1_REG ;
 int AXP288_FG_DES_CAP1_REG ;
 int AXP288_FG_LOW_CAP_REG ;
 int CHRG_STAT_BAT_PRESENT ;
 int EINVAL ;
 int FG_DES_CAP_RES_LSB ;
 int FG_REP_CAP_VALID ;
 int FG_REP_CAP_VAL_MASK ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int PROP_CURR (int) ;
 void* PROP_VOLT (int) ;
 int dev_err (int *,char*) ;
 int fuel_gauge_battery_health (struct axp288_fg_info*) ;
 int fuel_gauge_get_current (struct axp288_fg_info*,int*) ;
 int fuel_gauge_get_status (struct axp288_fg_info*) ;
 int fuel_gauge_get_vbatt (struct axp288_fg_info*,int*) ;
 int fuel_gauge_get_vocv (struct axp288_fg_info*,int*) ;
 int fuel_gauge_read_15bit_word (struct axp288_fg_info*,int ) ;
 int fuel_gauge_reg_readb (struct axp288_fg_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct axp288_fg_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int fuel_gauge_get_property(struct power_supply *ps,
  enum power_supply_property prop,
  union power_supply_propval *val)
{
 struct axp288_fg_info *info = power_supply_get_drvdata(ps);
 int ret = 0, value;

 mutex_lock(&info->lock);
 switch (prop) {
 case 132:
  fuel_gauge_get_status(info);
  val->intval = info->status;
  break;
 case 134:
  val->intval = fuel_gauge_battery_health(info);
  break;
 case 129:
  ret = fuel_gauge_get_vbatt(info, &value);
  if (ret < 0)
   goto fuel_gauge_read_err;
  val->intval = PROP_VOLT(value);
  break;
 case 128:
  ret = fuel_gauge_get_vocv(info, &value);
  if (ret < 0)
   goto fuel_gauge_read_err;
  val->intval = PROP_VOLT(value);
  break;
 case 135:
  ret = fuel_gauge_get_current(info, &value);
  if (ret < 0)
   goto fuel_gauge_read_err;
  val->intval = PROP_CURR(value);
  break;
 case 133:
  ret = fuel_gauge_reg_readb(info, AXP20X_PWR_OP_MODE);
  if (ret < 0)
   goto fuel_gauge_read_err;

  if (ret & CHRG_STAT_BAT_PRESENT)
   val->intval = 1;
  else
   val->intval = 0;
  break;
 case 139:
  ret = fuel_gauge_reg_readb(info, AXP20X_FG_RES);
  if (ret < 0)
   goto fuel_gauge_read_err;

  if (!(ret & FG_REP_CAP_VALID))
   dev_err(&info->pdev->dev,
    "capacity measurement not valid\n");
  val->intval = (ret & FG_REP_CAP_VAL_MASK);
  break;
 case 138:
  ret = fuel_gauge_reg_readb(info, AXP288_FG_LOW_CAP_REG);
  if (ret < 0)
   goto fuel_gauge_read_err;
  val->intval = (ret & 0x0f);
  break;
 case 131:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 136:
  ret = fuel_gauge_read_15bit_word(info, AXP288_FG_CC_MTR1_REG);
  if (ret < 0)
   goto fuel_gauge_read_err;

  val->intval = ret * FG_DES_CAP_RES_LSB;
  break;
 case 137:
  ret = fuel_gauge_read_15bit_word(info, AXP288_FG_DES_CAP1_REG);
  if (ret < 0)
   goto fuel_gauge_read_err;

  val->intval = ret * FG_DES_CAP_RES_LSB;
  break;
 case 130:
  val->intval = PROP_VOLT(info->max_volt);
  break;
 default:
  mutex_unlock(&info->lock);
  return -EINVAL;
 }

 mutex_unlock(&info->lock);
 return 0;

fuel_gauge_read_err:
 mutex_unlock(&info->lock);
 return ret;
}
