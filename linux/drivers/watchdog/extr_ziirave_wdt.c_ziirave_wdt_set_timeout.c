
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; int parent; } ;
struct i2c_client {int dummy; } ;


 int ZIIRAVE_WDT_TIMEOUT ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned int) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ziirave_wdt_set_timeout(struct watchdog_device *wdd,
       unsigned int timeout)
{
 struct i2c_client *client = to_i2c_client(wdd->parent);
 int ret;

 ret = i2c_smbus_write_byte_data(client, ZIIRAVE_WDT_TIMEOUT, timeout);
 if (!ret)
  wdd->timeout = timeout;

 return ret;
}
