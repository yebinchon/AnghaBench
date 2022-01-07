
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {TYPE_2__ led_classdev; } ;


 unsigned int TPACPI_LED_NUMLEDS ;
 int kfree (TYPE_1__*) ;
 int led_classdev_unregister (TYPE_2__*) ;
 TYPE_1__* tpacpi_leds ;

__attribute__((used)) static void led_exit(void)
{
 unsigned int i;

 for (i = 0; i < TPACPI_LED_NUMLEDS; i++) {
  if (tpacpi_leds[i].led_classdev.name)
   led_classdev_unregister(&tpacpi_leds[i].led_classdev);
 }

 kfree(tpacpi_leds);
}
