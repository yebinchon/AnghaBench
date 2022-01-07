
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_light {int ready; int has_flash; int channels_count; int * name; int * channels; } ;


 int gb_lights_channel_release (int *) ;
 int gb_lights_light_v4l2_unregister (struct gb_light*) ;
 int kfree (int *) ;

__attribute__((used)) static void gb_lights_light_release(struct gb_light *light)
{
 int i;

 light->ready = 0;

 if (light->has_flash)
  gb_lights_light_v4l2_unregister(light);
 light->has_flash = 0;

 for (i = 0; i < light->channels_count; i++)
  gb_lights_channel_release(&light->channels[i]);
 light->channels_count = 0;

 kfree(light->channels);
 light->channels = ((void*)0);
 kfree(light->name);
 light->name = ((void*)0);
}
