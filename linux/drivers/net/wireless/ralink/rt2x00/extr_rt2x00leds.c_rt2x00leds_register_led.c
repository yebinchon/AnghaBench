
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int brightness; } ;
struct rt2x00_led {int flags; TYPE_2__ led_dev; } ;
struct rt2x00_dev {TYPE_1__* hw; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int wiphy; } ;


 int LED_OFF ;
 int LED_REGISTERED ;
 int led_classdev_register (struct device*,TYPE_2__*) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 struct device* wiphy_dev (int ) ;

__attribute__((used)) static int rt2x00leds_register_led(struct rt2x00_dev *rt2x00dev,
       struct rt2x00_led *led,
       const char *name)
{
 struct device *device = wiphy_dev(rt2x00dev->hw->wiphy);
 int retval;

 led->led_dev.name = name;
 led->led_dev.brightness = LED_OFF;

 retval = led_classdev_register(device, &led->led_dev);
 if (retval) {
  rt2x00_err(rt2x00dev, "Failed to register led handler\n");
  return retval;
 }

 led->flags |= LED_REGISTERED;

 return 0;
}
