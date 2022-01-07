
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {int raw_scr; int raw_csd; scalar_t__ sd_erase_status; scalar_t__ sd_lock_status; } ;
struct rtsx_chip {scalar_t__ sd_int; scalar_t__ sd_io; int card_wp; int card_fail; int card_ready; struct sd_info sd_card; } ;


 int SD_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int memset (int ,int ,int) ;
 int sd_power_off_card3v3 (struct rtsx_chip*) ;

int release_sd_card(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval;

 chip->card_ready &= ~SD_CARD;
 chip->card_fail &= ~SD_CARD;
 chip->card_wp &= ~SD_CARD;

 chip->sd_io = 0;
 chip->sd_int = 0;






 memset(sd_card->raw_csd, 0, 16);
 memset(sd_card->raw_scr, 0, 8);

 retval = sd_power_off_card3v3(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
