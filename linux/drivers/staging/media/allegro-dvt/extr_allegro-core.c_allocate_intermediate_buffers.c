
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int buffers_intermediate; } ;


 int allocate_buffers_internal (struct allegro_channel*,int *,size_t,size_t) ;

__attribute__((used)) static int allocate_intermediate_buffers(struct allegro_channel *channel,
      size_t n, size_t size)
{
 return allocate_buffers_internal(channel,
      &channel->buffers_intermediate,
      n, size);
}
