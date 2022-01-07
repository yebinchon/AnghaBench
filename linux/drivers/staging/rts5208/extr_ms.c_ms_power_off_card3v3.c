
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int ft2_fast_mode; scalar_t__ asic_code; } ;


 int CARD_OE ;
 int FPGA_MS_PULL_CTL_BIT ;
 int FPGA_PULL_CTL ;
 int MS_CARD ;
 int MS_OUTPUT_EN ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int card_power_off (struct rtsx_chip*,int ) ;
 int disable_card_clock (struct rtsx_chip*,int ) ;
 int ms_pull_ctl_disable (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

int ms_power_off_card3v3(struct rtsx_chip *chip)
{
 int retval;

 retval = disable_card_clock(chip, MS_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (chip->asic_code) {
  retval = ms_pull_ctl_disable(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 } else {
  retval = rtsx_write_register(chip, FPGA_PULL_CTL,
          FPGA_MS_PULL_CTL_BIT | 0x20,
          FPGA_MS_PULL_CTL_BIT);
  if (retval)
   return retval;
 }
 retval = rtsx_write_register(chip, CARD_OE, MS_OUTPUT_EN, 0);
 if (retval)
  return retval;

 if (!chip->ft2_fast_mode) {
  retval = card_power_off(chip, MS_CARD);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
