
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int card_ready; scalar_t__ sd_io; } ;


 int MS_CARD ;
 int SD_CARD ;
 int XD_CARD ;
 int ms_cleanup_work (struct rtsx_chip*) ;
 int ms_power_off_card3v3 (struct rtsx_chip*) ;
 int sd_cleanup_work (struct rtsx_chip*) ;
 int sd_power_off_card3v3 (struct rtsx_chip*) ;
 int xd_cleanup_work (struct rtsx_chip*) ;
 int xd_power_off_card3v3 (struct rtsx_chip*) ;

void rtsx_power_off_card(struct rtsx_chip *chip)
{
 if ((chip->card_ready & SD_CARD) || chip->sd_io) {
  sd_cleanup_work(chip);
  sd_power_off_card3v3(chip);
 }

 if (chip->card_ready & XD_CARD) {
  xd_cleanup_work(chip);
  xd_power_off_card3v3(chip);
 }

 if (chip->card_ready & MS_CARD) {
  ms_cleanup_work(chip);
  ms_power_off_card3v3(chip);
 }
}
