
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int strval; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 size_t REG_SERIAL_NUMBER ;
 TYPE_1__* sbs_data ;
 int sbs_read_word_data (struct i2c_client*,int ) ;
 int sbs_serial ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int sbs_get_battery_serial_number(struct i2c_client *client,
 union power_supply_propval *val)
{
 int ret;

 ret = sbs_read_word_data(client, sbs_data[REG_SERIAL_NUMBER].addr);
 if (ret < 0)
  return ret;

 sprintf(sbs_serial, "%04x", ret);
 val->strval = sbs_serial;

 return 0;
}
