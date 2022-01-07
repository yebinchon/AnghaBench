
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct max17040_chip {int soc; } ;
struct i2c_client {int dummy; } ;


 int MAX17040_SOC ;
 struct max17040_chip* i2c_get_clientdata (struct i2c_client*) ;
 int max17040_read_reg (struct i2c_client*,int ) ;

__attribute__((used)) static void max17040_get_soc(struct i2c_client *client)
{
 struct max17040_chip *chip = i2c_get_clientdata(client);
 u16 soc;

 soc = max17040_read_reg(client, MAX17040_SOC);

 chip->soc = (soc >> 8);
}
