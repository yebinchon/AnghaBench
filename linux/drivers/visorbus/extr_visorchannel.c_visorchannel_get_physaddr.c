
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct visorchannel {int physaddr; } ;



u64 visorchannel_get_physaddr(struct visorchannel *channel)
{
 return channel->physaddr;
}
