
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int parent; } ;
struct i2c_client {int dummy; } ;


 int ZIIRAVE_PING_VALUE ;
 int ZIIRAVE_WDT_PING ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ziirave_wdt_ping(struct watchdog_device *wdd)
{
 struct i2c_client *client = to_i2c_client(wdd->parent);

 return i2c_smbus_write_byte_data(client, ZIIRAVE_WDT_PING,
      ZIIRAVE_PING_VALUE);
}
