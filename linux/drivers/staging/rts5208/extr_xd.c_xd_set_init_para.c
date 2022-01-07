
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xd_info {int xd_clock; } ;
struct rtsx_chip {scalar_t__ asic_code; struct xd_info xd_card; } ;


 int CLK_50 ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int switch_clock (struct rtsx_chip*,int) ;

__attribute__((used)) static int xd_set_init_para(struct rtsx_chip *chip)
{
 struct xd_info *xd_card = &chip->xd_card;
 int retval;

 if (chip->asic_code)
  xd_card->xd_clock = 47;
 else
  xd_card->xd_clock = CLK_50;

 retval = switch_clock(chip, xd_card->xd_clock);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
