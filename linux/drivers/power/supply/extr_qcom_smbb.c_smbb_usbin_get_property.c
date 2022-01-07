
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct smbb_charger {int status; int* attr; int statlock; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 size_t ATTR_USBIN_IMAX ;
 int EINVAL ;



 int STATUS_CHG_GONE ;
 int STATUS_USBIN_VALID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct smbb_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int smbb_usbin_get_property(struct power_supply *psy,
  enum power_supply_property psp,
  union power_supply_propval *val)
{
 struct smbb_charger *chg = power_supply_get_drvdata(psy);
 int rc = 0;

 switch (psp) {
 case 128:
  mutex_lock(&chg->statlock);
  val->intval = !(chg->status & STATUS_CHG_GONE) &&
    (chg->status & STATUS_USBIN_VALID);
  mutex_unlock(&chg->statlock);
  break;
 case 130:
  val->intval = chg->attr[ATTR_USBIN_IMAX];
  break;
 case 129:
  val->intval = 2500000;
  break;
 default:
  rc = -EINVAL;
  break;
 }

 return rc;
}
