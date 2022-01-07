
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z2_charger {TYPE_1__* info; int client; } ;
struct TYPE_2__ {int batt_mult; int batt_div; int batt_I2C_reg; } ;


 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static unsigned long z2_read_bat(struct z2_charger *charger)
{
 int data;
 data = i2c_smbus_read_byte_data(charger->client,
     charger->info->batt_I2C_reg);
 if (data < 0)
  return 0;

 return data * charger->info->batt_mult / charger->info->batt_div;
}
