
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int SD_CARD ;
 int SD_CHECK_MODE ;
 int SD_CRC16_ERR ;
 int SD_NO_CARD ;
 int SD_STAT1 ;
 int SD_SWITCH_MODE ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int dev_dbg (int ,char*) ;
 int downgrade_switch_mode (int,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int sd_check_switch_mode (struct rtsx_chip*,int ,int,int,int) ;
 int sd_set_err_code (struct rtsx_chip*,int ) ;
 int wait_timeout (int) ;

__attribute__((used)) static int sd_check_switch(struct rtsx_chip *chip,
      u8 func_group, u8 func_to_switch, u8 bus_width)
{
 int retval;
 int i;
 bool switch_good = 0;

 for (i = 0; i < 3; i++) {
  if (detect_card_cd(chip, SD_CARD) != STATUS_SUCCESS) {
   sd_set_err_code(chip, SD_NO_CARD);
   return STATUS_FAIL;
  }

  retval = sd_check_switch_mode(chip, SD_CHECK_MODE, func_group,
           func_to_switch, bus_width);
  if (retval == STATUS_SUCCESS) {
   u8 stat;

   retval = sd_check_switch_mode(chip, SD_SWITCH_MODE,
            func_group,
            func_to_switch,
            bus_width);
   if (retval == STATUS_SUCCESS) {
    switch_good = 1;
    break;
   }

   retval = rtsx_read_register(chip, SD_STAT1, &stat);
   if (retval)
    return retval;
   if (stat & SD_CRC16_ERR) {
    dev_dbg(rtsx_dev(chip), "SD CRC16 error when switching mode\n");
    return STATUS_FAIL;
   }
  }

  func_to_switch = downgrade_switch_mode(func_group,
             func_to_switch);

  wait_timeout(20);
 }

 if (!switch_good)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
