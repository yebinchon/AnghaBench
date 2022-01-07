
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_channel {int mode; } ;


 int GB_CHANNEL_MODE_TORCH ;
 int __gb_lights_flash_led_register (struct gb_channel*) ;
 int __gb_lights_led_register (struct gb_channel*) ;
 int is_channel_flash (struct gb_channel*) ;

__attribute__((used)) static int gb_lights_channel_register(struct gb_channel *channel)
{

 if (!is_channel_flash(channel))
  return __gb_lights_led_register(channel);





 if (!(channel->mode & GB_CHANNEL_MODE_TORCH))
  return __gb_lights_flash_led_register(channel);

 return 0;
}
