
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int buffers_intermediate; } ;


 void destroy_buffers_internal (struct allegro_channel*,int *) ;

__attribute__((used)) static void destroy_intermediate_buffers(struct allegro_channel *channel)
{
 return destroy_buffers_internal(channel,
     &channel->buffers_intermediate);
}
