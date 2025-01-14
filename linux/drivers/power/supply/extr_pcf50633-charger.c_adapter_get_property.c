
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct pcf50633_mbc {int adapter_online; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;

 struct pcf50633_mbc* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int adapter_get_property(struct power_supply *psy,
   enum power_supply_property psp,
   union power_supply_propval *val)
{
 struct pcf50633_mbc *mbc = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
 case 128:
  val->intval = mbc->adapter_online;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
