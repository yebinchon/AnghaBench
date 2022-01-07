
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_channel {int releasing; } ;


 int gb_lights_channel_free (struct gb_channel*) ;
 int gb_lights_channel_unregister (struct gb_channel*) ;

__attribute__((used)) static void gb_lights_channel_release(struct gb_channel *channel)
{
 channel->releasing = 1;

 gb_lights_channel_unregister(channel);

 gb_lights_channel_free(channel);
}
