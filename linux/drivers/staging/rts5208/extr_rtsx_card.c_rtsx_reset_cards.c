
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int need_reset; int card_exist; scalar_t__ xd_show_cnt; scalar_t__ sd_show_cnt; scalar_t__ ms_show_cnt; scalar_t__ chip_insert_with_sdio; } ;


 scalar_t__ CHECK_BARO_PKG (struct rtsx_chip*,int ) ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 scalar_t__ MAX_SHOW_CNT ;
 int MS_CARD ;
 int MS_NR ;
 int OC_PDCTL ;
 int QFN ;
 int RBCTL ;
 int RB_FLUSH ;
 int RTSX_STAT_RUN ;
 int SD_CARD ;
 int SD_NR ;
 int SSC_PDCTL ;
 int XD_CARD ;
 int clear_bit (int ,int*) ;
 int do_reset_ms_card (struct rtsx_chip*) ;
 int do_reset_sd_card (struct rtsx_chip*) ;
 int do_reset_xd_card (struct rtsx_chip*) ;
 int rtsx_disable_aspm (struct rtsx_chip*) ;
 int rtsx_force_power_on (struct rtsx_chip*,int) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int ,int ) ;

void rtsx_reset_cards(struct rtsx_chip *chip)
{
 if (!chip->need_reset)
  return;

 rtsx_set_stat(chip, RTSX_STAT_RUN);

 rtsx_force_power_on(chip, SSC_PDCTL | OC_PDCTL);

 rtsx_disable_aspm(chip);

 if ((chip->need_reset & SD_CARD) && chip->chip_insert_with_sdio)
  clear_bit(SD_NR, &chip->need_reset);

 if (chip->need_reset & XD_CARD) {
  chip->card_exist |= XD_CARD;

  if (chip->xd_show_cnt >= MAX_SHOW_CNT)
   do_reset_xd_card(chip);
  else
   chip->xd_show_cnt++;
 }
 if (CHECK_PID(chip, 0x5288) && CHECK_BARO_PKG(chip, QFN)) {
  if (chip->card_exist & XD_CARD) {
   clear_bit(SD_NR, &chip->need_reset);
   clear_bit(MS_NR, &chip->need_reset);
  }
 }
 if (chip->need_reset & SD_CARD) {
  chip->card_exist |= SD_CARD;

  if (chip->sd_show_cnt >= MAX_SHOW_CNT) {
   rtsx_write_register(chip, RBCTL, RB_FLUSH, RB_FLUSH);
   do_reset_sd_card(chip);
  } else {
   chip->sd_show_cnt++;
  }
 }
 if (chip->need_reset & MS_CARD) {
  chip->card_exist |= MS_CARD;

  if (chip->ms_show_cnt >= MAX_SHOW_CNT)
   do_reset_ms_card(chip);
  else
   chip->ms_show_cnt++;
 }
}
