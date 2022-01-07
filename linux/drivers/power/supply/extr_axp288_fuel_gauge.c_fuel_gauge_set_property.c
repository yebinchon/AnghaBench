
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp288_fg_info {int lock; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int AXP288_FG_LOW_CAP_REG ;
 int EINVAL ;

 int fuel_gauge_reg_readb (struct axp288_fg_info*,int ) ;
 int fuel_gauge_reg_writeb (struct axp288_fg_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct axp288_fg_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int fuel_gauge_set_property(struct power_supply *ps,
  enum power_supply_property prop,
  const union power_supply_propval *val)
{
 struct axp288_fg_info *info = power_supply_get_drvdata(ps);
 int ret = 0;

 mutex_lock(&info->lock);
 switch (prop) {
 case 128:
  if ((val->intval < 0) || (val->intval > 15)) {
   ret = -EINVAL;
   break;
  }
  ret = fuel_gauge_reg_readb(info, AXP288_FG_LOW_CAP_REG);
  if (ret < 0)
   break;
  ret &= 0xf0;
  ret |= (val->intval & 0xf);
  ret = fuel_gauge_reg_writeb(info, AXP288_FG_LOW_CAP_REG, ret);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&info->lock);
 return ret;
}
