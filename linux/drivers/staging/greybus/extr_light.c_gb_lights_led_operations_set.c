
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int blink_set; int brightness_set_blocking; int brightness_get; } ;
struct gb_channel {int flags; } ;


 int GB_LIGHT_CHANNEL_BLINK ;
 int gb_blink_set ;
 int gb_brightness_get ;
 int gb_brightness_set ;

__attribute__((used)) static void gb_lights_led_operations_set(struct gb_channel *channel,
      struct led_classdev *cdev)
{
 cdev->brightness_get = gb_brightness_get;
 cdev->brightness_set_blocking = gb_brightness_set;

 if (channel->flags & GB_LIGHT_CHANNEL_BLINK)
  cdev->blink_set = gb_blink_set;
}
