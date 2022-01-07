
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {scalar_t__ led_toggle_counter; scalar_t__ blink_led; scalar_t__ card_exist; } ;


 int LED_GPIO ;
 scalar_t__ LED_TOGGLE_INTERVAL ;
 int toggle_gpio (struct rtsx_chip*,int ) ;

__attribute__((used)) static inline void rtsx_blink_led(struct rtsx_chip *chip)
{
 if (chip->card_exist && chip->blink_led) {
  if (chip->led_toggle_counter < LED_TOGGLE_INTERVAL) {
   chip->led_toggle_counter++;
  } else {
   chip->led_toggle_counter = 0;
   toggle_gpio(chip, LED_GPIO);
  }
 }
}
