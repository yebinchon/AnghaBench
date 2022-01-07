
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_channel {int buffers_reference; } ;


 int PAGE_ALIGN (size_t) ;
 int allocate_buffers_internal (struct allegro_channel*,int *,size_t,int ) ;

__attribute__((used)) static int allocate_reference_buffers(struct allegro_channel *channel,
          size_t n, size_t size)
{
 return allocate_buffers_internal(channel,
      &channel->buffers_reference,
      n, PAGE_ALIGN(size));
}
