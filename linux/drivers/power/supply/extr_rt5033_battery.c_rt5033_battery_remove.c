
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5033_battery {int psy; } ;
struct i2c_client {int dummy; } ;


 struct rt5033_battery* i2c_get_clientdata (struct i2c_client*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int rt5033_battery_remove(struct i2c_client *client)
{
 struct rt5033_battery *battery = i2c_get_clientdata(client);

 power_supply_unregister(battery->psy);

 return 0;
}
