
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {void* intval; } ;
struct rt9455_info {int * regmap_fields; int regmap; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int F_BATAB ;
 int F_BST32SI ;
 int F_BSTBUSOVI ;
 int F_BSTLOWVI ;
 int F_BSTOLI ;
 int F_CH32MI ;
 int F_CHBATOVI ;
 size_t F_STAT ;
 int F_TSDI ;
 int F_VINOVPI ;
 unsigned int GET_MASK (int ) ;
 void* POWER_SUPPLY_HEALTH_GOOD ;
 void* POWER_SUPPLY_HEALTH_OVERHEAT ;
 void* POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 void* POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE ;
 void* POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 unsigned int RT9455_FAULT ;
 int RT9455_REG_IRQ1 ;
 int RT9455_REG_IRQ2 ;
 int RT9455_REG_IRQ3 ;
 int dev_err (struct device*,char*) ;
 int regmap_field_read (int ,unsigned int*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int rt9455_charger_get_health(struct rt9455_info *info,
         union power_supply_propval *val)
{
 struct device *dev = &info->client->dev;
 unsigned int v;
 int ret;

 val->intval = POWER_SUPPLY_HEALTH_GOOD;

 ret = regmap_read(info->regmap, RT9455_REG_IRQ1, &v);
 if (ret) {
  dev_err(dev, "Failed to read IRQ1 register\n");
  return ret;
 }

 if (v & GET_MASK(F_TSDI)) {
  val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  return 0;
 }
 if (v & GET_MASK(F_VINOVPI)) {
  val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  return 0;
 }
 if (v & GET_MASK(F_BATAB)) {
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  return 0;
 }

 ret = regmap_read(info->regmap, RT9455_REG_IRQ2, &v);
 if (ret) {
  dev_err(dev, "Failed to read IRQ2 register\n");
  return ret;
 }

 if (v & GET_MASK(F_CHBATOVI)) {
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  return 0;
 }
 if (v & GET_MASK(F_CH32MI)) {
  val->intval = POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE;
  return 0;
 }

 ret = regmap_read(info->regmap, RT9455_REG_IRQ3, &v);
 if (ret) {
  dev_err(dev, "Failed to read IRQ3 register\n");
  return ret;
 }

 if (v & GET_MASK(F_BSTBUSOVI)) {
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  return 0;
 }
 if (v & GET_MASK(F_BSTOLI)) {
  val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  return 0;
 }
 if (v & GET_MASK(F_BSTLOWVI)) {
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  return 0;
 }
 if (v & GET_MASK(F_BST32SI)) {
  val->intval = POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE;
  return 0;
 }

 ret = regmap_field_read(info->regmap_fields[F_STAT], &v);
 if (ret) {
  dev_err(dev, "Failed to read STAT bits\n");
  return ret;
 }

 if (v == RT9455_FAULT) {
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  return 0;
 }

 return 0;
}
