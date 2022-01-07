
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int parent; } ;
struct i2c_client {int dummy; } ;


 int ZIIRAVE_WDT_STATE ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ziirave_wdt_set_state(struct watchdog_device *wdd, int state)
{
 struct i2c_client *client = to_i2c_client(wdd->parent);

 return i2c_smbus_write_byte_data(client, ZIIRAVE_WDT_STATE, state);
}
