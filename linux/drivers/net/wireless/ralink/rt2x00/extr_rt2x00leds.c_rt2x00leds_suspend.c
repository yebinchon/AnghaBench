
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct rt2x00_dev {TYPE_1__ led_radio; TYPE_1__ led_assoc; TYPE_1__ led_qual; } ;


 int LED_REGISTERED ;
 int rt2x00leds_suspend_led (TYPE_1__*) ;

void rt2x00leds_suspend(struct rt2x00_dev *rt2x00dev)
{
 if (rt2x00dev->led_qual.flags & LED_REGISTERED)
  rt2x00leds_suspend_led(&rt2x00dev->led_qual);
 if (rt2x00dev->led_assoc.flags & LED_REGISTERED)
  rt2x00leds_suspend_led(&rt2x00dev->led_assoc);
 if (rt2x00dev->led_radio.flags & LED_REGISTERED)
  rt2x00leds_suspend_led(&rt2x00dev->led_radio);
}
