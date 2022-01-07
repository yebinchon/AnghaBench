
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int CARD_PWR_CTL ;
 int STATUS_SUCCESS ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static inline int card_power_off_all(struct rtsx_chip *chip)
{
 int retval;

 retval = rtsx_write_register(chip, CARD_PWR_CTL, 0x0F, 0x0F);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}
