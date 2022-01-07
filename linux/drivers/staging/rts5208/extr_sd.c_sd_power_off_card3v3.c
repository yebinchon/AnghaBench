
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {scalar_t__ asic_code; int ft2_fast_mode; } ;


 int CARD_OE ;
 int FPGA_PULL_CTL ;
 int FPGA_SD_PULL_CTL_BIT ;
 int SD_CARD ;
 int SD_OUTPUT_EN ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int card_power_off (struct rtsx_chip*,int ) ;
 int disable_card_clock (struct rtsx_chip*,int ) ;
 int mdelay (int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int sd_pull_ctl_disable (struct rtsx_chip*) ;

int sd_power_off_card3v3(struct rtsx_chip *chip)
{
 int retval;

 retval = disable_card_clock(chip, SD_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = rtsx_write_register(chip, CARD_OE, SD_OUTPUT_EN, 0);
 if (retval)
  return retval;

 if (!chip->ft2_fast_mode) {
  retval = card_power_off(chip, SD_CARD);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  mdelay(50);
 }

 if (chip->asic_code) {
  retval = sd_pull_ctl_disable(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 } else {
  retval = rtsx_write_register(chip, FPGA_PULL_CTL,
          FPGA_SD_PULL_CTL_BIT | 0x20,
          FPGA_SD_PULL_CTL_BIT);
  if (retval)
   return retval;
 }

 return STATUS_SUCCESS;
}
