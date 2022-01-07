
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
typedef scalar_t__ s32 ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int addr; } ;


 TYPE_1__* sbs_data ;
 scalar_t__ sbs_read_string_data (struct i2c_client*,int ,char*) ;

__attribute__((used)) static int sbs_get_battery_string_property(struct i2c_client *client,
 int reg_offset, enum power_supply_property psp, char *val)
{
 s32 ret;

 ret = sbs_read_string_data(client, sbs_data[reg_offset].addr, val);

 if (ret < 0)
  return ret;

 return 0;
}
