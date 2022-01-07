
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct max8925_power_info {int ac_online; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENODATA ;
 int ENODEV ;
 int MEASURE_VCHG ;


 struct max8925_power_info* dev_get_drvdata (int ) ;
 int start_measure (struct max8925_power_info*,int ) ;

__attribute__((used)) static int max8925_ac_get_prop(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct max8925_power_info *info = dev_get_drvdata(psy->dev.parent);
 int ret = 0;

 switch (psp) {
 case 129:
  val->intval = info->ac_online;
  break;
 case 128:
  if (info->ac_online) {
   ret = start_measure(info, MEASURE_VCHG);
   if (ret >= 0) {
    val->intval = ret * 2000;
    goto out;
   }
  }
  ret = -ENODATA;
  break;
 default:
  ret = -ENODEV;
  break;
 }
out:
 return ret;
}
