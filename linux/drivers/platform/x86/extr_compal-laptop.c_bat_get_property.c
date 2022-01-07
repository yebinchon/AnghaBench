
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct compal_data {int bat_serial_number; int bat_manufacturer_name; int bat_model_name; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BAT_CAPACITY ;
 int BAT_CHARGE_DESIGN ;
 int BAT_CHARGE_LIMIT ;
 int BAT_CHARGE_LIMIT_MAX ;
 int BAT_CHARGE_NOW ;
 int BAT_CURRENT_AVG ;
 int BAT_CURRENT_NOW ;
 int BAT_POWER ;
 int BAT_TEMP ;
 int BAT_TEMP_AVG ;
 int BAT_VOLTAGE_DESIGN ;
 int BAT_VOLTAGE_NOW ;
 int bat_capacity_level () ;
 int bat_health () ;
 int bat_is_present () ;
 int bat_status () ;
 int bat_technology () ;
 int ec_read_s16 (int ) ;
 int ec_read_s8 (int ) ;
 int ec_read_u16 (int ) ;
 int ec_read_u8 (int ) ;
 struct compal_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bat_get_property(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct compal_data *data = power_supply_get_drvdata(psy);

 switch (psp) {
 case 133:
  val->intval = bat_status();
  break;
 case 139:
  val->intval = bat_health();
  break;
 case 135:
  val->intval = bat_is_present();
  break;
 case 132:
  val->intval = bat_technology();
  break;
 case 129:
  val->intval = ec_read_u16(BAT_VOLTAGE_DESIGN) * 1000;
  break;
 case 128:
  val->intval = ec_read_u16(BAT_VOLTAGE_NOW) * 1000;
  break;
 case 140:
  val->intval = ec_read_s16(BAT_CURRENT_NOW) * 1000;
  break;
 case 141:
  val->intval = ec_read_s16(BAT_CURRENT_AVG) * 1000;
  break;
 case 136:
  val->intval = ec_read_u8(BAT_POWER) * 1000000;
  break;
 case 143:
  val->intval = ec_read_u16(BAT_CHARGE_DESIGN) * 1000;
  break;
 case 142:
  val->intval = ec_read_u16(BAT_CHARGE_NOW) * 1000;
  break;
 case 145:
  val->intval = ec_read_u8(BAT_CHARGE_LIMIT);
  break;
 case 144:
  val->intval = BAT_CHARGE_LIMIT_MAX;
  break;
 case 147:
  val->intval = ec_read_u8(BAT_CAPACITY);
  break;
 case 146:
  val->intval = bat_capacity_level();
  break;





 case 131:
  val->intval = ((222 - (int)ec_read_u8(BAT_TEMP)) * 1000) >> 8;
  break;
 case 130:
  val->intval = ec_read_s8(BAT_TEMP_AVG) * 10;
  break;

 case 137:
  val->strval = data->bat_model_name;
  break;
 case 138:
  val->strval = data->bat_manufacturer_name;
  break;
 case 134:
  val->strval = data->bat_serial_number;
  break;
 default:
  break;
 }
 return 0;
}
