
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ziirave_wdt_data {int wdd; } ;
struct i2c_client {int dummy; } ;


 struct ziirave_wdt_data* i2c_get_clientdata (struct i2c_client*) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int ziirave_wdt_remove(struct i2c_client *client)
{
 struct ziirave_wdt_data *w_priv = i2c_get_clientdata(client);

 watchdog_unregister_device(&w_priv->wdd);

 return 0;
}
