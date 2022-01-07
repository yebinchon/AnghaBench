
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_light {int channels_count; int ready; int has_flash; TYPE_1__* channels; } ;
struct TYPE_2__ {int lock; } ;


 int gb_lights_channel_register (TYPE_1__*) ;
 int gb_lights_light_v4l2_register (struct gb_light*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int gb_lights_light_register(struct gb_light *light)
{
 int ret;
 int i;






 for (i = 0; i < light->channels_count; i++) {
  ret = gb_lights_channel_register(&light->channels[i]);
  if (ret < 0)
   return ret;

  mutex_init(&light->channels[i].lock);
 }

 light->ready = 1;

 if (light->has_flash) {
  ret = gb_lights_light_v4l2_register(light);
  if (ret < 0) {
   light->has_flash = 0;
   return ret;
  }
 }

 return 0;
}
