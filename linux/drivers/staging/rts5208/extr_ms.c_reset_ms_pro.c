
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms_info {int* raw_sys_info; scalar_t__ switch_8bit_fail; } ;
struct rtsx_chip {int ms_power_class_en; int* card_bus_width; size_t* card2lun; struct ms_info ms_card; } ;


 scalar_t__ CHK_HG8BIT (struct ms_info*) ;
 scalar_t__ CHK_MSXC (struct ms_info*) ;
 size_t MS_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int dev_dbg (int ,char*,int) ;
 int mg_set_tpc_para_sub (struct rtsx_chip*,int ,int ) ;
 int ms_pro_reset_flow (struct rtsx_chip*,int) ;
 int ms_read_attribute_info (struct rtsx_chip*) ;
 int msxc_change_power (struct rtsx_chip*,int) ;
 int rtsx_dev (struct rtsx_chip*) ;

__attribute__((used)) static int reset_ms_pro(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;
 retval = ms_pro_reset_flow(chip, 1);
 if (retval != STATUS_SUCCESS) {
  if (ms_card->switch_8bit_fail) {
   retval = ms_pro_reset_flow(chip, 0);
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;
  } else {
   return STATUS_FAIL;
  }
 }

 retval = ms_read_attribute_info(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;
 if (CHK_HG8BIT(ms_card))
  chip->card_bus_width[chip->card2lun[MS_CARD]] = 8;
 else
  chip->card_bus_width[chip->card2lun[MS_CARD]] = 4;

 return STATUS_SUCCESS;
}
