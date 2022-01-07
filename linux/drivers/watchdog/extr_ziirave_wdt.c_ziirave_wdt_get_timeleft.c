
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int parent; } ;
struct i2c_client {int dummy; } ;


 int ZIIRAVE_WDT_TIME_LEFT ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static unsigned int ziirave_wdt_get_timeleft(struct watchdog_device *wdd)
{
 struct i2c_client *client = to_i2c_client(wdd->parent);
 int ret;

 ret = i2c_smbus_read_byte_data(client, ZIIRAVE_WDT_TIME_LEFT);
 if (ret < 0)
  ret = 0;

 return ret;
}
