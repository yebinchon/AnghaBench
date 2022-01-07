
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ltc294x_info {scalar_t__ Qlsb; int client; } ;
typedef int s32 ;
typedef enum ltc294x_reg { ____Placeholder_ltc294x_reg } ltc294x_reg ;


 int EINVAL ;
 int I16_LSB (int) ;
 int I16_MSB (int) ;
 int convert_uAh_to_bin (struct ltc294x_info const*,int) ;
 int ltc294x_write_regs (int ,int,int *,int) ;

__attribute__((used)) static int ltc294x_set_charge_thr(const struct ltc294x_info *info,
     enum ltc294x_reg reg, int val)
{
 u8 dataw[2];
 s32 value;

 value = convert_uAh_to_bin(info, val);

 if (info->Qlsb < 0)
  value += 0xFFFF;
 if ((value < 0) || (value > 0xFFFF))
  return -EINVAL;


 dataw[0] = I16_MSB(value);
 dataw[1] = I16_LSB(value);
 return ltc294x_write_regs(info->client, reg, &dataw[0], 2);
}
