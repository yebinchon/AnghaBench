
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_chip {int pmos_pwr_on_interval; } ;


 int CARD_PWR_CTL ;
 scalar_t__ CHECK_LUN_MODE (struct rtsx_chip*,int ) ;
 scalar_t__ MS_CARD ;
 scalar_t__ MS_PARTIAL_POWER_ON ;
 scalar_t__ MS_POWER_MASK ;
 scalar_t__ MS_POWER_ON ;
 int SD_MS_2LUN ;
 scalar_t__ SD_PARTIAL_POWER_ON ;
 scalar_t__ SD_POWER_MASK ;
 scalar_t__ SD_POWER_ON ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WRITE_REG_CMD ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,scalar_t__,scalar_t__) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;
 int udelay (int ) ;

int card_power_on(struct rtsx_chip *chip, u8 card)
{
 int retval;
 u8 mask, val1, val2;

 if (CHECK_LUN_MODE(chip, SD_MS_2LUN) && (card == MS_CARD)) {
  mask = MS_POWER_MASK;
  val1 = MS_PARTIAL_POWER_ON;
  val2 = MS_POWER_ON;
 } else {
  mask = SD_POWER_MASK;
  val1 = SD_PARTIAL_POWER_ON;
  val2 = SD_POWER_ON;
 }

 rtsx_init_cmd(chip);
 rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PWR_CTL, mask, val1);

 retval = rtsx_send_cmd(chip, 0, 100);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 udelay(chip->pmos_pwr_on_interval);

 rtsx_init_cmd(chip);
 rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_PWR_CTL, mask, val2);

 retval = rtsx_send_cmd(chip, 0, 100);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
