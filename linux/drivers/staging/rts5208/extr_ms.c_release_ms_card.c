
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ delay_write_flag; } ;
struct ms_info {int raw_model_name; int raw_sys_info; scalar_t__ pro_under_formatting; TYPE_1__ delay_write; } ;
struct rtsx_chip {int card_wp; int card_fail; int card_ready; struct ms_info ms_card; } ;


 int MS_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int memset (int ,int ,int) ;
 int ms_free_l2p_tbl (struct rtsx_chip*) ;
 int ms_power_off_card3v3 (struct rtsx_chip*) ;

int release_ms_card(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;




 ms_card->pro_under_formatting = 0;

 chip->card_ready &= ~MS_CARD;
 chip->card_fail &= ~MS_CARD;
 chip->card_wp &= ~MS_CARD;

 ms_free_l2p_tbl(chip);

 memset(ms_card->raw_sys_info, 0, 96);




 retval = ms_power_off_card3v3(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
