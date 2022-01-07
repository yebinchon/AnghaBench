
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_readl (struct rtsx_chip*,int ) ;

int rtsx_check_chip_exist(struct rtsx_chip *chip)
{
 if (rtsx_readl(chip, 0) == 0xFFFFFFFF)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
