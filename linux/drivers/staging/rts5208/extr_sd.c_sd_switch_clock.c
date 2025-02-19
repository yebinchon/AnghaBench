
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {int sd_clock; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 scalar_t__ CHK_MMC_DDR52 (struct sd_info*) ;
 scalar_t__ CHK_SD (struct sd_info*) ;
 scalar_t__ CHK_SD_DDR50 (struct sd_info*) ;
 int SD_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int mmc_ddr_tuning (struct rtsx_chip*) ;
 int sd_ddr_tuning (struct rtsx_chip*) ;
 int sd_sdr_tuning (struct rtsx_chip*) ;
 int select_card (struct rtsx_chip*,int ) ;
 int switch_clock (struct rtsx_chip*,int ) ;

int sd_switch_clock(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval;
 int re_tuning = 0;

 retval = select_card(chip, SD_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = switch_clock(chip, sd_card->sd_clock);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (re_tuning) {
  if (CHK_SD(sd_card)) {
   if (CHK_SD_DDR50(sd_card))
    retval = sd_ddr_tuning(chip);
   else
    retval = sd_sdr_tuning(chip);
  } else {
   if (CHK_MMC_DDR52(sd_card))
    retval = mmc_ddr_tuning(chip);
  }

  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
