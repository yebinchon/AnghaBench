
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int ss_counter; int ss_idle_period; scalar_t__ sd_io; } ;


 int POLLING_INTERVAL ;
 scalar_t__ RTSX_STAT_IDLE ;
 int rtsx_exclusive_enter_ss (struct rtsx_chip*) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_is_ss_allowed (struct rtsx_chip*) ;

__attribute__((used)) static void rtsx_manage_ss(struct rtsx_chip *chip)
{
 if (!rtsx_is_ss_allowed(chip) || chip->sd_io)
  return;

 if (rtsx_get_stat(chip) != RTSX_STAT_IDLE) {
  chip->ss_counter = 0;
  return;
 }

 if (chip->ss_counter < (chip->ss_idle_period / POLLING_INTERVAL))
  chip->ss_counter++;
 else
  rtsx_exclusive_enter_ss(chip);
}
