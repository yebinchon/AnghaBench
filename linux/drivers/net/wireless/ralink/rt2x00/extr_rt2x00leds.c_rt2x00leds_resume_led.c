
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness; int (* brightness_set ) (TYPE_1__*,int ) ;} ;
struct rt2x00_led {TYPE_1__ led_dev; } ;


 int LED_OFF ;
 int led_classdev_resume (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static inline void rt2x00leds_resume_led(struct rt2x00_led *led)
{
 led_classdev_resume(&led->led_dev);


 led->led_dev.brightness_set(&led->led_dev, LED_OFF);
 led->led_dev.brightness = LED_OFF;
}
