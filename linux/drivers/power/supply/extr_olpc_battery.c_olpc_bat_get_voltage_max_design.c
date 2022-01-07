
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int uint8_t ;


 int BAT_ADDR_MFR_TYPE ;
 int EC_BAT_EEPROM ;
 int EIO ;


 int olpc_bat_get_tech (union power_supply_propval*) ;
 int olpc_ec_cmd (int ,int*,int,int*,int) ;

__attribute__((used)) static int olpc_bat_get_voltage_max_design(union power_supply_propval *val)
{
 uint8_t ec_byte;
 union power_supply_propval tech;
 int mfr;
 int ret;

 ret = olpc_bat_get_tech(&tech);
 if (ret)
  return ret;

 ec_byte = BAT_ADDR_MFR_TYPE;
 ret = olpc_ec_cmd(EC_BAT_EEPROM, &ec_byte, 1, &ec_byte, 1);
 if (ret)
  return ret;

 mfr = ec_byte >> 4;

 switch (tech.intval) {
 case 128:
  switch (mfr) {
  case 1:
   val->intval = 6000000;
   break;
  default:
   return -EIO;
  }
  break;

 case 129:
  switch (mfr) {
  case 1:
   val->intval = 6400000;
   break;
  case 2:
   val->intval = 6500000;
   break;
  default:
   return -EIO;
  }
  break;

 default:
  return -EIO;
 }

 return ret;
}
