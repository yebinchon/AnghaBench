
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct visorchannel {scalar_t__ nbytes; scalar_t__ mapped; } ;


 int EIO ;
 int memcpy (void*,scalar_t__,scalar_t__) ;

int visorchannel_read(struct visorchannel *channel, ulong offset, void *dest,
        ulong nbytes)
{
 if (offset + nbytes > channel->nbytes)
  return -EIO;

 memcpy(dest, channel->mapped + offset, nbytes);
 return 0;
}
