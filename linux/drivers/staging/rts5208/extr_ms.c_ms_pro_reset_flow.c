
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_info {int switch_8bit_fail; } ;
struct rtsx_chip {scalar_t__ support_ms_8bit; struct ms_info ms_card; } ;


 scalar_t__ CHK_MSHG (struct ms_info*) ;
 int MS_BUS_WIDTH_4 ;
 int MS_CARD ;
 int MS_CFG ;
 int MS_NO_CARD ;
 int PUSH_TIME_ODD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int ms_confirm_cpu_startup (struct rtsx_chip*) ;
 int ms_identify_media_type (struct rtsx_chip*,int) ;
 int ms_prepare_reset (struct rtsx_chip*) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_set_init_para (struct rtsx_chip*) ;
 int ms_switch_8bit_bus (struct rtsx_chip*) ;
 int ms_switch_parallel_bus (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static int ms_pro_reset_flow(struct rtsx_chip *chip, int switch_8bit_bus)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval, i;

 for (i = 0; i < 3; i++) {
  retval = ms_prepare_reset(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_identify_media_type(chip, switch_8bit_bus);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_confirm_cpu_startup(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_switch_parallel_bus(chip);
  if (retval != STATUS_SUCCESS) {
   if (detect_card_cd(chip, MS_CARD) != STATUS_SUCCESS) {
    ms_set_err_code(chip, MS_NO_CARD);
    return STATUS_FAIL;
   }
   continue;
  } else {
   break;
  }
 }

 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;


 retval = rtsx_write_register(chip, MS_CFG, 0x18, MS_BUS_WIDTH_4);
 if (retval)
  return retval;

 retval = rtsx_write_register(chip, MS_CFG, PUSH_TIME_ODD,
         PUSH_TIME_ODD);
 if (retval)
  return retval;

 retval = ms_set_init_para(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;


 if (CHK_MSHG(ms_card) && chip->support_ms_8bit && switch_8bit_bus) {
  retval = ms_switch_8bit_bus(chip);
  if (retval != STATUS_SUCCESS) {
   ms_card->switch_8bit_fail = 1;
   return STATUS_FAIL;
  }
 }

 return STATUS_SUCCESS;
}
