
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u16 ;
struct sbsm_data {int client; int is_ltc1760; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;

 int SBSM_BIT_TURBO ;
 int SBSM_CMD_LTC ;
 struct sbsm_data* power_supply_get_drvdata (struct power_supply*) ;
 int sbsm_write_word (int ,int ,int ) ;

__attribute__((used)) static int sbsm_set_property(struct power_supply *psy,
        enum power_supply_property psp,
        const union power_supply_propval *val)
{
 struct sbsm_data *data = power_supply_get_drvdata(psy);
 int ret = -EINVAL;
 u16 regval;

 switch (psp) {
 case 128:

  if (!data->is_ltc1760)
   break;
  regval = val->intval ==
    POWER_SUPPLY_CHARGE_TYPE_FAST ? SBSM_BIT_TURBO : 0;
  ret = sbsm_write_word(data->client, SBSM_CMD_LTC, regval);
  break;

 default:
  break;
 }

 return ret;
}
