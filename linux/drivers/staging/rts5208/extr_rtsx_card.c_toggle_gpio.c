
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int CARD_GPIO ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

void toggle_gpio(struct rtsx_chip *chip, u8 gpio)
{
 u8 temp_reg;

 rtsx_read_register(chip, CARD_GPIO, &temp_reg);
 temp_reg ^= (0x01 << gpio);
 rtsx_write_register(chip, CARD_GPIO, 0xFF, temp_reg);
}
