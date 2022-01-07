
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct act8865 {int off_mask; int off_reg; int regmap; } ;


 int act8865_i2c_client ;
 struct act8865* i2c_get_clientdata (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void act8865_power_off(void)
{
 struct act8865 *act8865;

 act8865 = i2c_get_clientdata(act8865_i2c_client);
 regmap_write(act8865->regmap, act8865->off_reg, act8865->off_mask);
 while (1);
}
