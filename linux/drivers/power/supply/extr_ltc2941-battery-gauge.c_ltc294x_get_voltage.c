
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ltc294x_info {int id; int client; } ;




 int LTC294X_REG_VOLTAGE_MSB ;
 int ltc294x_read_regs (int ,int ,int*,int) ;

__attribute__((used)) static int ltc294x_get_voltage(const struct ltc294x_info *info, int *val)
{
 int ret;
 u8 datar[2];
 u32 value;

 ret = ltc294x_read_regs(info->client,
  LTC294X_REG_VOLTAGE_MSB, &datar[0], 2);
 value = (datar[0] << 8) | datar[1];
 switch (info->id) {
 case 129:
  value *= 23600 * 2;
  value /= 0xFFFF;
  value *= 1000 / 2;
  break;
 case 128:
  value *= 70800 / 5*4;
  value /= 0xFFFF;
  value *= 1000 * 5/4;
  break;
 default:
  value *= 6000 * 10;
  value /= 0xFFFF;
  value *= 1000 / 10;
  break;
 }
 *val = value;
 return ret;
}
