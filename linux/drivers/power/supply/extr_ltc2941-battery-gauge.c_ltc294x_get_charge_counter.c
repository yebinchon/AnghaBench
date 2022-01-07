
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc294x_info {int dummy; } ;


 scalar_t__ LTC294X_MID_SUPPLY ;
 int LTC294X_REG_ACC_CHARGE_MSB ;
 int convert_bin_to_uAh (struct ltc294x_info const*,int) ;
 int ltc294x_read_charge_register (struct ltc294x_info const*,int ) ;

__attribute__((used)) static int ltc294x_get_charge_counter(
 const struct ltc294x_info *info, int *val)
{
 int value = ltc294x_read_charge_register(info, LTC294X_REG_ACC_CHARGE_MSB);

 if (value < 0)
  return value;
 value -= LTC294X_MID_SUPPLY;
 *val = convert_bin_to_uAh(info, value);
 return 0;
}
