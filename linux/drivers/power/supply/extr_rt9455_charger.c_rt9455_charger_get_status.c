
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct rt9455_info {TYPE_1__* client; int * regmap_fields; } ;
struct TYPE_2__ {int dev; } ;


 size_t F_PWR_RDY ;
 size_t F_STAT ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int dev_err (int *,char*) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int rt9455_charger_get_status(struct rt9455_info *info,
         union power_supply_propval *val)
{
 unsigned int v, pwr_rdy;
 int ret;

 ret = regmap_field_read(info->regmap_fields[F_PWR_RDY],
    &pwr_rdy);
 if (ret) {
  dev_err(&info->client->dev, "Failed to read PWR_RDY bit\n");
  return ret;
 }





 if (!pwr_rdy) {
  val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  return 0;
 }

 ret = regmap_field_read(info->regmap_fields[F_STAT], &v);
 if (ret) {
  dev_err(&info->client->dev, "Failed to read STAT bits\n");
  return ret;
 }

 switch (v) {
 case 0:
  val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  return 0;
 case 1:
  val->intval = POWER_SUPPLY_STATUS_CHARGING;
  return 0;
 case 2:
  val->intval = POWER_SUPPLY_STATUS_FULL;
  return 0;
 default:
  val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  return 0;
 }
}
