
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_peripheral {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int num_i2c_peripherals; struct i2c_peripheral* i2c_peripherals; } ;


 TYPE_1__* cros_laptop ;

__attribute__((used)) static void chromeos_laptop_detach_i2c_client(struct i2c_client *client)
{
 struct i2c_peripheral *i2c_dev;
 int i;

 for (i = 0; i < cros_laptop->num_i2c_peripherals; i++) {
  i2c_dev = &cros_laptop->i2c_peripherals[i];

  if (i2c_dev->client == client)
   i2c_dev->client = ((void*)0);
 }
}
