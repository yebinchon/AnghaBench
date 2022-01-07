
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xd_info {int xd_clock; } ;
struct rtsx_chip {struct xd_info xd_card; } ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int XD_CARD ;
 int select_card (struct rtsx_chip*,int ) ;
 int switch_clock (struct rtsx_chip*,int ) ;

__attribute__((used)) static int xd_switch_clock(struct rtsx_chip *chip)
{
 struct xd_info *xd_card = &chip->xd_card;
 int retval;

 retval = select_card(chip, XD_CARD);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = switch_clock(chip, xd_card->xd_clock);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
