
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {int dummy; } ;
struct gb_channel {TYPE_1__* led; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int brightness; } ;


 int __gb_lights_brightness_set (struct gb_channel*) ;
 struct gb_channel* get_channel_from_cdev (struct led_classdev*) ;

__attribute__((used)) static int gb_brightness_set(struct led_classdev *cdev,
        enum led_brightness value)
{
 struct gb_channel *channel = get_channel_from_cdev(cdev);

 channel->led->brightness = value;

 return __gb_lights_brightness_set(channel);
}
