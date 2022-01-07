
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int uint8_t ;
 int EC_BAT_ERRCODE ;
 int EIO ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 int olpc_ec_cmd (int ,int *,int ,int*,int) ;

__attribute__((used)) static int olpc_bat_get_health(union power_supply_propval *val)
{
 uint8_t ec_byte;
 int ret;

 ret = olpc_ec_cmd(EC_BAT_ERRCODE, ((void*)0), 0, &ec_byte, 1);
 if (ret)
  return ret;

 switch (ec_byte) {
 case 0:
  val->intval = POWER_SUPPLY_HEALTH_GOOD;
  break;

 case 129:
  val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  break;

 case 128:
  val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  break;

 case 131:
 case 130:
 case 132:
 case 133:
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  break;

 default:

  ret = -EIO;
 }

 return ret;
}
