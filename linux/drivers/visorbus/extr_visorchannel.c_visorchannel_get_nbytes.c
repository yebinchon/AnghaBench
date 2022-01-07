
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct visorchannel {int nbytes; } ;



ulong visorchannel_get_nbytes(struct visorchannel *channel)
{
 return channel->nbytes;
}
