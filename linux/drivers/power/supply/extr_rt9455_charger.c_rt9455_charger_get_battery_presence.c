
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct rt9455_info {TYPE_1__* client; int * regmap_fields; } ;
struct TYPE_2__ {int dev; } ;


 size_t F_BATAB ;
 int dev_err (int *,char*) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int rt9455_charger_get_battery_presence(struct rt9455_info *info,
            union power_supply_propval *val)
{
 unsigned int v;
 int ret;

 ret = regmap_field_read(info->regmap_fields[F_BATAB], &v);
 if (ret) {
  dev_err(&info->client->dev, "Failed to read BATAB bit\n");
  return ret;
 }





 val->intval = !v;

 return 0;
}
