
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct max17040_chip {int soc; int vcell; int online; int status; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;




 struct max17040_chip* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int max17040_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct max17040_chip *chip = power_supply_get_drvdata(psy);

 switch (psp) {
 case 129:
  val->intval = chip->status;
  break;
 case 130:
  val->intval = chip->online;
  break;
 case 128:
  val->intval = chip->vcell;
  break;
 case 131:
  val->intval = chip->soc;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
