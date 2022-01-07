
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {scalar_t__ intval; } ;
struct i2c_client {int dummy; } ;
typedef scalar_t__ s32 ;
typedef enum sbs_battery_mode { ____Placeholder_sbs_battery_mode } sbs_battery_mode ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int addr; } ;


 int BATTERY_MODE_AMPS ;
 int BATTERY_MODE_WATTS ;
 scalar_t__ power_supply_is_amp_property (int) ;
 TYPE_1__* sbs_data ;
 scalar_t__ sbs_read_word_data (struct i2c_client*,int ) ;
 scalar_t__ sbs_set_battery_mode (struct i2c_client*,int) ;

__attribute__((used)) static int sbs_get_battery_capacity(struct i2c_client *client,
 int reg_offset, enum power_supply_property psp,
 union power_supply_propval *val)
{
 s32 ret;
 enum sbs_battery_mode mode = BATTERY_MODE_WATTS;

 if (power_supply_is_amp_property(psp))
  mode = BATTERY_MODE_AMPS;

 mode = sbs_set_battery_mode(client, mode);
 if (mode < 0)
  return mode;

 ret = sbs_read_word_data(client, sbs_data[reg_offset].addr);
 if (ret < 0)
  return ret;

 val->intval = ret;

 ret = sbs_set_battery_mode(client, mode);
 if (ret < 0)
  return ret;

 return 0;
}
