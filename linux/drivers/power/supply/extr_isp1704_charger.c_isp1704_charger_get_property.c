
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {char* strval; int intval; } ;
struct power_supply {int dummy; } ;
struct isp1704_charger {char* model; int current_max; int online; int present; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;





 struct isp1704_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int isp1704_charger_get_property(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct isp1704_charger *isp = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  val->intval = isp->present;
  break;
 case 129:
  val->intval = isp->online;
  break;
 case 132:
  val->intval = isp->current_max;
  break;
 case 130:
  val->strval = isp->model;
  break;
 case 131:
  val->strval = "NXP";
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
