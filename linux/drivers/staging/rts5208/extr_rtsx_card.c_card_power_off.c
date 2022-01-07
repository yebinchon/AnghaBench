
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_chip {int dummy; } ;


 int CARD_PWR_CTL ;
 scalar_t__ CHECK_LUN_MODE (struct rtsx_chip*,int ) ;
 scalar_t__ MS_CARD ;
 scalar_t__ MS_POWER_MASK ;
 scalar_t__ MS_POWER_OFF ;
 int SD_MS_2LUN ;
 scalar_t__ SD_POWER_MASK ;
 scalar_t__ SD_POWER_OFF ;
 int STATUS_SUCCESS ;
 int rtsx_write_register (struct rtsx_chip*,int ,scalar_t__,scalar_t__) ;

int card_power_off(struct rtsx_chip *chip, u8 card)
{
 int retval;
 u8 mask, val;

 if (CHECK_LUN_MODE(chip, SD_MS_2LUN) && (card == MS_CARD)) {
  mask = MS_POWER_MASK;
  val = MS_POWER_OFF;
 } else {
  mask = SD_POWER_MASK;
  val = SD_POWER_OFF;
 }

 retval = rtsx_write_register(chip, CARD_PWR_CTL, mask, val);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}
