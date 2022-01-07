
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int ocp_stat; int ft2_fast_mode; scalar_t__ asic_code; } ;


 int CARD_OE ;
 int FPGA_PULL_CTL ;
 int FPGA_SD_PULL_CTL_BIT ;
 int SD_CARD ;
 int SD_OC_EVER ;
 int SD_OC_NOW ;
 int SD_OUTPUT_EN ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int card_power_on (struct rtsx_chip*,int ) ;
 int dev_dbg (int ,char*,int) ;
 int enable_card_clock (struct rtsx_chip*,int ) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int sd_power_off_card3v3 (struct rtsx_chip*) ;
 int sd_pull_ctl_enable (struct rtsx_chip*) ;
 int wait_timeout (int) ;

__attribute__((used)) static int sd_init_power(struct rtsx_chip *chip)
{
 int retval;

 retval = sd_power_off_card3v3(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (!chip->ft2_fast_mode)
  wait_timeout(250);

 retval = enable_card_clock(chip, SD_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (chip->asic_code) {
  retval = sd_pull_ctl_enable(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 } else {
  retval = rtsx_write_register(chip, FPGA_PULL_CTL,
          FPGA_SD_PULL_CTL_BIT | 0x20, 0);
  if (retval)
   return retval;
 }

 if (!chip->ft2_fast_mode) {
  retval = card_power_on(chip, SD_CARD);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  wait_timeout(260);
 }

 retval = rtsx_write_register(chip, CARD_OE, SD_OUTPUT_EN,
         SD_OUTPUT_EN);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}
