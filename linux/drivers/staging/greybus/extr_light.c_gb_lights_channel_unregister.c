
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_channel {int mode; } ;


 int GB_CHANNEL_MODE_TORCH ;
 int __gb_lights_flash_led_unregister (struct gb_channel*) ;
 int __gb_lights_led_unregister (struct gb_channel*) ;
 int is_channel_flash (struct gb_channel*) ;

__attribute__((used)) static void gb_lights_channel_unregister(struct gb_channel *channel)
{

 if (!is_channel_flash(channel)) {
  __gb_lights_led_unregister(channel);
  return;
 }

 if (channel->mode & GB_CHANNEL_MODE_TORCH)
  __gb_lights_led_unregister(channel);
 else
  __gb_lights_flash_led_unregister(channel);
}
