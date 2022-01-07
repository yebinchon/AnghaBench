
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct pm860x_battery_info {int start_soc; int dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EPERM ;

 int ccnt_data ;
 int clear_ccnt (struct pm860x_battery_info*,int *) ;
 int dev_dbg (int ,char*,int) ;
 struct pm860x_battery_info* dev_get_drvdata (int ) ;

__attribute__((used)) static int pm860x_batt_set_prop(struct power_supply *psy,
           enum power_supply_property psp,
           const union power_supply_propval *val)
{
 struct pm860x_battery_info *info = dev_get_drvdata(psy->dev.parent);

 switch (psp) {
 case 128:
  clear_ccnt(info, &ccnt_data);
  info->start_soc = 100;
  dev_dbg(info->dev, "chg done, update soc = %d\n",
   info->start_soc);
  break;
 default:
  return -EPERM;
 }

 return 0;
}
