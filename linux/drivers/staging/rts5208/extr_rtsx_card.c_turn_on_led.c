
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int CARD_GPIO ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

void turn_on_led(struct rtsx_chip *chip, u8 gpio)
{
 if (CHECK_PID(chip, 0x5288))
  rtsx_write_register(chip, CARD_GPIO, (u8)(1 << gpio),
        (u8)(1 << gpio));
 else
  rtsx_write_register(chip, CARD_GPIO, (u8)(1 << gpio), 0);
}
