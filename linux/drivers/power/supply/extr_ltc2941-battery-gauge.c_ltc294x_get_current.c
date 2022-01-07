
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ltc294x_info {scalar_t__ id; int r_sense; int client; } ;
typedef int s32 ;


 int LTC2943_REG_CURRENT_MSB ;
 scalar_t__ LTC2944_ID ;
 int ltc294x_read_regs (int ,int ,int*,int) ;

__attribute__((used)) static int ltc294x_get_current(const struct ltc294x_info *info, int *val)
{
 int ret;
 u8 datar[2];
 s32 value;

 ret = ltc294x_read_regs(info->client,
  LTC2943_REG_CURRENT_MSB, &datar[0], 2);
 value = (datar[0] << 8) | datar[1];
 value -= 0x7FFF;
 if (info->id == LTC2944_ID)
  value *= 64000;
 else
  value *= 60000;



 *val = 1000 * (value / (info->r_sense * 0x7FFF));
 return ret;
}
