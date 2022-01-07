
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct rt2x00_dev {TYPE_1__ led_assoc; } ;


 scalar_t__ LED_TYPE_ASSOC ;
 int rt2x00led_led_simple (TYPE_1__*,int) ;

void rt2x00leds_led_assoc(struct rt2x00_dev *rt2x00dev, bool enabled)
{
 if (rt2x00dev->led_assoc.type == LED_TYPE_ASSOC)
  rt2x00led_led_simple(&rt2x00dev->led_assoc, enabled);
}
