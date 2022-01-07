
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb302_chip {int dummy; } ;


 int fusb302_i2c_mask_write (struct fusb302_chip*,int ,int ,int) ;

__attribute__((used)) static int fusb302_i2c_clear_bits(struct fusb302_chip *chip, u8 address,
      u8 clear_bits)
{
 return fusb302_i2c_mask_write(chip, address, clear_bits, 0x00);
}
