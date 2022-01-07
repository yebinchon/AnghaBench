
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct smbb_charger {int dummy; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ATTR_USBIN_IMAX ;
 int EINVAL ;

 struct smbb_charger* power_supply_get_drvdata (struct power_supply*) ;
 int smbb_charger_attr_write (struct smbb_charger*,int ,int ) ;

__attribute__((used)) static int smbb_usbin_set_property(struct power_supply *psy,
  enum power_supply_property psp,
  const union power_supply_propval *val)
{
 struct smbb_charger *chg = power_supply_get_drvdata(psy);
 int rc;

 switch (psp) {
 case 128:
  rc = smbb_charger_attr_write(chg, ATTR_USBIN_IMAX,
    val->intval);
  break;
 default:
  rc = -EINVAL;
  break;
 }

 return rc;
}
