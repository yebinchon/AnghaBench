
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc294x_info {scalar_t__ Qlsb; } ;
typedef enum ltc294x_reg { ____Placeholder_ltc294x_reg } ltc294x_reg ;


 int convert_bin_to_uAh (struct ltc294x_info const*,int) ;
 int ltc294x_read_charge_register (struct ltc294x_info const*,int) ;

__attribute__((used)) static int ltc294x_get_charge(const struct ltc294x_info *info,
    enum ltc294x_reg reg, int *val)
{
 int value = ltc294x_read_charge_register(info, reg);

 if (value < 0)
  return value;

 if (info->Qlsb < 0)
  value -= 0xFFFF;
 *val = convert_bin_to_uAh(info, value);
 return 0;
}
