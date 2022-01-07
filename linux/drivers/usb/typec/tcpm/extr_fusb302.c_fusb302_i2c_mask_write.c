
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb302_chip {int dummy; } ;


 int fusb302_i2c_read (struct fusb302_chip*,int ,int *) ;
 int fusb302_i2c_write (struct fusb302_chip*,int ,int ) ;

__attribute__((used)) static int fusb302_i2c_mask_write(struct fusb302_chip *chip, u8 address,
      u8 mask, u8 value)
{
 int ret = 0;
 u8 data;

 ret = fusb302_i2c_read(chip, address, &data);
 if (ret < 0)
  return ret;
 data &= ~mask;
 data |= value;
 ret = fusb302_i2c_write(chip, address, data);
 if (ret < 0)
  return ret;

 return ret;
}
