
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb302_chip {int dummy; } ;


 int FUSB_REG_POWER ;
 int fusb302_i2c_write (struct fusb302_chip*,int ,int ) ;

__attribute__((used)) static int fusb302_set_power_mode(struct fusb302_chip *chip, u8 power_mode)
{
 int ret = 0;

 ret = fusb302_i2c_write(chip, FUSB_REG_POWER, power_mode);

 return ret;
}
