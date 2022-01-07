
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int card_ready; int* lun2card; int card_ejected; scalar_t__* capacity; } ;


 int MS_CARD ;
 int SD_CARD ;
 int XD_CARD ;
 int do_remaining_work (struct rtsx_chip*) ;
 int release_ms_card (struct rtsx_chip*) ;
 int release_sd_card (struct rtsx_chip*) ;
 int release_xd_card (struct rtsx_chip*) ;

void eject_card(struct rtsx_chip *chip, unsigned int lun)
{
 do_remaining_work(chip);

 if ((chip->card_ready & chip->lun2card[lun]) == SD_CARD) {
  release_sd_card(chip);
  chip->card_ejected |= SD_CARD;
  chip->card_ready &= ~SD_CARD;
  chip->capacity[lun] = 0;
 } else if ((chip->card_ready & chip->lun2card[lun]) == XD_CARD) {
  release_xd_card(chip);
  chip->card_ejected |= XD_CARD;
  chip->card_ready &= ~XD_CARD;
  chip->capacity[lun] = 0;
 } else if ((chip->card_ready & chip->lun2card[lun]) == MS_CARD) {
  release_ms_card(chip);
  chip->card_ejected |= MS_CARD;
  chip->card_ready &= ~MS_CARD;
  chip->capacity[lun] = 0;
 }
}
