
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max17040_chip {int work; int battery; } ;
struct i2c_client {int dummy; } ;


 int cancel_delayed_work (int *) ;
 struct max17040_chip* i2c_get_clientdata (struct i2c_client*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int max17040_remove(struct i2c_client *client)
{
 struct max17040_chip *chip = i2c_get_clientdata(client);

 power_supply_unregister(chip->battery);
 cancel_delayed_work(&chip->work);
 return 0;
}
