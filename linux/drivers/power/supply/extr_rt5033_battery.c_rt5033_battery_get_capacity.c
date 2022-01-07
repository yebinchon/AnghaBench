
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt5033_battery {int regmap; } ;
struct i2c_client {int dummy; } ;


 int RT5033_FUEL_REG_SOC_H ;
 struct rt5033_battery* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int rt5033_battery_get_capacity(struct i2c_client *client)
{
 struct rt5033_battery *battery = i2c_get_clientdata(client);
 u32 msb;

 regmap_read(battery->regmap, RT5033_FUEL_REG_SOC_H, &msb);

 return msb;
}
