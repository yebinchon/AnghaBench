
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int rtsx_handle_pm_dstate (struct rtsx_chip*,int) ;

void rtsx_enter_L1(struct rtsx_chip *chip)
{
 rtsx_handle_pm_dstate(chip, 2);
}
