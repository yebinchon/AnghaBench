
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct lego_ev3_battery {int technology; int v_max; int v_min; int iio_i; int iio_v; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;






 int POWER_SUPPLY_SCOPE_SYSTEM ;
 int iio_read_channel_processed (int ,int*) ;
 struct lego_ev3_battery* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int lego_ev3_battery_get_property(struct power_supply *psy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 struct lego_ev3_battery *batt = power_supply_get_drvdata(psy);
 int ret, val2;

 switch (psp) {
 case 131:
  val->intval = batt->technology;
  break;
 case 128:

  ret = iio_read_channel_processed(batt->iio_v, &val->intval);
  if (ret)
   return ret;

  val->intval *= 2000;
  val->intval += 50000;


  ret = iio_read_channel_processed(batt->iio_i, &val2);
  if (ret)
   return ret;

  val2 *= 1000;
  val2 /= 15;
  val->intval += val2;
  break;
 case 130:
  val->intval = batt->v_max;
  break;
 case 129:
  val->intval = batt->v_min;
  break;
 case 133:

  ret = iio_read_channel_processed(batt->iio_i, &val->intval);
  if (ret)
   return ret;

  val->intval *= 20000;
  val->intval /= 15;
  break;
 case 132:
  val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
