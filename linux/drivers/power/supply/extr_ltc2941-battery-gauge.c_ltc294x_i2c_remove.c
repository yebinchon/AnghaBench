
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc294x_info {int supply; int work; } ;
struct i2c_client {int dummy; } ;


 int cancel_delayed_work (int *) ;
 struct ltc294x_info* i2c_get_clientdata (struct i2c_client*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int ltc294x_i2c_remove(struct i2c_client *client)
{
 struct ltc294x_info *info = i2c_get_clientdata(client);

 cancel_delayed_work(&info->work);
 power_supply_unregister(info->supply);
 return 0;
}
