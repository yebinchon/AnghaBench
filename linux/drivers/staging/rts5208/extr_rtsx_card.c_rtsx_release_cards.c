
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int int_reg; int card_ready; scalar_t__ sd_io; } ;


 int MS_CARD ;
 int MS_EXIST ;
 int RTSX_BIPR ;
 int SD_CARD ;
 int SD_EXIST ;
 int XD_CARD ;
 int XD_EXIST ;
 int ms_cleanup_work (struct rtsx_chip*) ;
 int release_ms_card (struct rtsx_chip*) ;
 int release_sd_card (struct rtsx_chip*) ;
 int release_xd_card (struct rtsx_chip*) ;
 int rtsx_readl (struct rtsx_chip*,int ) ;
 int sd_cleanup_work (struct rtsx_chip*) ;
 int xd_cleanup_work (struct rtsx_chip*) ;

void rtsx_release_cards(struct rtsx_chip *chip)
{
 chip->int_reg = rtsx_readl(chip, RTSX_BIPR);

 if ((chip->card_ready & SD_CARD) || chip->sd_io) {
  if (chip->int_reg & SD_EXIST)
   sd_cleanup_work(chip);
  release_sd_card(chip);
 }

 if (chip->card_ready & XD_CARD) {
  if (chip->int_reg & XD_EXIST)
   xd_cleanup_work(chip);
  release_xd_card(chip);
 }

 if (chip->card_ready & MS_CARD) {
  if (chip->int_reg & MS_EXIST)
   ms_cleanup_work(chip);
  release_ms_card(chip);
 }
}
