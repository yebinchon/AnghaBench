
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {long intval; } ;
typedef int u32 ;
struct power_supply_hwmon {struct power_supply* psy; } ;
struct power_supply {int dummy; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 long DIV_ROUND_CLOSEST (long,int) ;
 int EINVAL ;
 int EOVERFLOW ;
 int check_mul_overflow (long,int,long*) ;
 struct power_supply_hwmon* dev_get_drvdata (struct device*) ;



 int power_supply_hwmon_to_property (int,int ,int) ;
 int power_supply_set_property (struct power_supply*,int,union power_supply_propval*) ;

__attribute__((used)) static int
power_supply_hwmon_write(struct device *dev, enum hwmon_sensor_types type,
    u32 attr, int channel, long val)
{
 struct power_supply_hwmon *psyhw = dev_get_drvdata(dev);
 struct power_supply *psy = psyhw->psy;
 union power_supply_propval pspval;
 int prop;

 prop = power_supply_hwmon_to_property(type, attr, channel);
 if (prop < 0)
  return prop;

 pspval.intval = val;

 switch (type) {





 case 130:
 case 129:
  if (check_mul_overflow(pspval.intval, 1000,
           &pspval.intval))
   return -EOVERFLOW;
  break;



 case 128:
  pspval.intval = DIV_ROUND_CLOSEST(pspval.intval, 100);
  break;
 default:
  return -EINVAL;
 }

 return power_supply_set_property(psy, prop, &pspval);
}
