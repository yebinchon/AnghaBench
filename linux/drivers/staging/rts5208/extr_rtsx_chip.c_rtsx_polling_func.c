
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int sd_int; int sd_io; scalar_t__ polling_config; } ;


 scalar_t__ CHECK_LUN_MODE (struct rtsx_chip*,int ) ;
 int RTSX_STAT_DELINK ;


 int RTSX_STAT_SS ;
 int RTSX_STAT_SUSPEND ;
 int SD_MS_2LUN ;
 int do_remaining_work (struct rtsx_chip*) ;
 int rtsx_blink_led (struct rtsx_chip*) ;
 scalar_t__ rtsx_chk_stat (struct rtsx_chip*,int ) ;
 int rtsx_delink_stage (struct rtsx_chip*) ;
 int rtsx_enable_aspm (struct rtsx_chip*) ;
 int rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_init_cards (struct rtsx_chip*) ;
 int rtsx_manage_1lun_mode (struct rtsx_chip*) ;
 int rtsx_manage_2lun_mode (struct rtsx_chip*) ;
 int rtsx_manage_aspm (struct rtsx_chip*) ;
 int rtsx_manage_idle (struct rtsx_chip*) ;
 int rtsx_manage_ocp (struct rtsx_chip*) ;
 int rtsx_manage_sd_lock (struct rtsx_chip*) ;
 int rtsx_manage_ss (struct rtsx_chip*) ;
 int rtsx_read_config_byte (struct rtsx_chip*,int ,int *) ;
 int try_to_switch_sdio_ctrl (struct rtsx_chip*) ;

void rtsx_polling_func(struct rtsx_chip *chip)
{
 if (rtsx_chk_stat(chip, RTSX_STAT_SUSPEND))
  return;

 if (rtsx_chk_stat(chip, RTSX_STAT_DELINK))
  goto delink_stage;

 if (chip->polling_config) {
  u8 val;

  rtsx_read_config_byte(chip, 0, &val);
 }

 if (rtsx_chk_stat(chip, RTSX_STAT_SS))
  return;

 rtsx_manage_ocp(chip);

 rtsx_manage_sd_lock(chip);

 rtsx_init_cards(chip);

 rtsx_manage_ss(chip);

 rtsx_manage_aspm(chip);

 rtsx_manage_idle(chip);

 switch (rtsx_get_stat(chip)) {
 case 128:



  do_remaining_work(chip);
  break;

 case 129:
  if (chip->sd_io && !chip->sd_int)
   try_to_switch_sdio_ctrl(chip);

  rtsx_enable_aspm(chip);
  break;

 default:
  break;
 }

 if (CHECK_LUN_MODE(chip, SD_MS_2LUN))
  rtsx_manage_2lun_mode(chip);
 else
  rtsx_manage_1lun_mode(chip);

delink_stage:
 rtsx_delink_stage(chip);
}
