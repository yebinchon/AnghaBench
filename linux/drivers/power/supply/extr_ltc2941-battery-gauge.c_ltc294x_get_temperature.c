
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ltc294x_info {scalar_t__ id; int client; } ;
typedef enum ltc294x_reg { ____Placeholder_ltc294x_reg } ltc294x_reg ;


 scalar_t__ LTC2942_ID ;
 int LTC2942_REG_TEMPERATURE_MSB ;
 int LTC2943_REG_TEMPERATURE_MSB ;
 int ltc294x_read_regs (int ,int,int*,int) ;

__attribute__((used)) static int ltc294x_get_temperature(const struct ltc294x_info *info, int *val)
{
 enum ltc294x_reg reg;
 int ret;
 u8 datar[2];
 u32 value;

 if (info->id == LTC2942_ID) {
  reg = LTC2942_REG_TEMPERATURE_MSB;
  value = 6000;
 } else {
  reg = LTC2943_REG_TEMPERATURE_MSB;
  value = 5100;
 }
 ret = ltc294x_read_regs(info->client, reg, &datar[0], 2);
 value *= (datar[0] << 8) | datar[1];

 *val = value / 0xFFFF - 2722;
 return ret;
}
