
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {scalar_t__ idle_counter; int sd_io; int card_ready; scalar_t__ auto_power_down; scalar_t__ led_toggle_counter; } ;


 scalar_t__ IDLE_MAX_COUNT ;
 int LED_GPIO ;
 int OC_PDCTL ;
 scalar_t__ RTSX_STAT_IDLE ;
 int SSC_PDCTL ;
 int dev_dbg (int ,char*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_force_power_down (struct rtsx_chip*,int) ;
 int rtsx_force_power_on (struct rtsx_chip*,int) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,scalar_t__) ;
 int turn_off_led (struct rtsx_chip*,int ) ;

__attribute__((used)) static void rtsx_manage_idle(struct rtsx_chip *chip)
{
 if (chip->idle_counter < IDLE_MAX_COUNT) {
  chip->idle_counter++;
  return;
 }

 if (rtsx_get_stat(chip) == RTSX_STAT_IDLE)
  return;

 dev_dbg(rtsx_dev(chip), "Idle state!\n");
 rtsx_set_stat(chip, RTSX_STAT_IDLE);




 rtsx_force_power_on(chip, SSC_PDCTL);

 turn_off_led(chip, LED_GPIO);

 if (chip->auto_power_down && !chip->card_ready && !chip->sd_io)
  rtsx_force_power_down(chip, SSC_PDCTL | OC_PDCTL);
}
