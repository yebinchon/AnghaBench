
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int rtsx_write_config_byte (struct rtsx_chip*,int,int ) ;

void rtsx_exit_L1(struct rtsx_chip *chip)
{
 rtsx_write_config_byte(chip, 0x44, 0);
 rtsx_write_config_byte(chip, 0x45, 0);
}
