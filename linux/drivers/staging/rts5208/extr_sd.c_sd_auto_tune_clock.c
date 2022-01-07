
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {int sd_clock; } ;
struct rtsx_chip {scalar_t__ asic_code; struct sd_info sd_card; } ;






 int CLK_50 ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int sd_switch_clock (struct rtsx_chip*) ;

__attribute__((used)) static inline int sd_auto_tune_clock(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval;

 if (chip->asic_code) {
  if (sd_card->sd_clock > 30)
   sd_card->sd_clock -= 20;
 } else {
  switch (sd_card->sd_clock) {
  case 130:
   sd_card->sd_clock = 131;
   break;

  case 131:
   sd_card->sd_clock = 132;
   break;

  case 132:
   sd_card->sd_clock = 133;
   break;

  case 133:
   sd_card->sd_clock = 128;
   break;

  case 128:
   sd_card->sd_clock = 129;
   break;

  case 129:
   sd_card->sd_clock = CLK_50;
   break;

  default:
   break;
  }
 }

 retval = sd_switch_clock(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
