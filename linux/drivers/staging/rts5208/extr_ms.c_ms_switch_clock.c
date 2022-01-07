
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_info {int ms_clock; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int MS_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int select_card (struct rtsx_chip*,int ) ;
 int switch_clock (struct rtsx_chip*,int ) ;

__attribute__((used)) static int ms_switch_clock(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;

 retval = select_card(chip, MS_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = switch_clock(chip, ms_card->ms_clock);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
