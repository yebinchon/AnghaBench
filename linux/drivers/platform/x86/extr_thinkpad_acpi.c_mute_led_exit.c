
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;


 int TPACPI_LED_MAX ;
 int led_classdev_unregister (int *) ;
 TYPE_1__* led_tables ;
 int * mute_led_cdev ;
 int tpacpi_led_set (int,int) ;

__attribute__((used)) static void mute_led_exit(void)
{
 int i;

 for (i = 0; i < TPACPI_LED_MAX; i++) {
  if (led_tables[i].state >= 0) {
   led_classdev_unregister(&mute_led_cdev[i]);
   tpacpi_led_set(i, 0);
  }
 }
}
