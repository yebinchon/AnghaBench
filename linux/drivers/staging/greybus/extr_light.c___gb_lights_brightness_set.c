
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_channel {scalar_t__ releasing; } ;


 int __gb_lights_flash_brightness_set (struct gb_channel*) ;
 int __gb_lights_led_brightness_set (struct gb_channel*) ;
 scalar_t__ is_channel_flash (struct gb_channel*) ;

__attribute__((used)) static int __gb_lights_brightness_set(struct gb_channel *channel)
{
 int ret;

 if (channel->releasing)
  return 0;

 if (is_channel_flash(channel))
  ret = __gb_lights_flash_brightness_set(channel);
 else
  ret = __gb_lights_led_brightness_set(channel);

 return ret;
}
