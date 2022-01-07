
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorchannel {int nbytes; int physaddr; scalar_t__ requested; scalar_t__ mapped; } ;


 int kfree (struct visorchannel*) ;
 int memunmap (scalar_t__) ;
 int release_mem_region (int ,int ) ;

void visorchannel_destroy(struct visorchannel *channel)
{
 if (!channel)
  return;

 if (channel->mapped) {
  memunmap(channel->mapped);
  if (channel->requested)
   release_mem_region(channel->physaddr, channel->nbytes);
 }
 kfree(channel);
}
