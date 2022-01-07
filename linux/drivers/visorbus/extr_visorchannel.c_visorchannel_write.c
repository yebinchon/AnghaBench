
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ulong ;
struct visorchannel {scalar_t__ nbytes; char* mapped; int chan_hdr; } ;
struct channel_header {int dummy; } ;


 int EIO ;
 int memcpy (char*,void*,size_t) ;
 size_t min (size_t,size_t) ;

int visorchannel_write(struct visorchannel *channel, ulong offset, void *dest,
         ulong nbytes)
{
 size_t chdr_size = sizeof(struct channel_header);
 size_t copy_size;

 if (offset + nbytes > channel->nbytes)
  return -EIO;

 if (offset < chdr_size) {
  copy_size = min(chdr_size - offset, nbytes);
  memcpy(((char *)(&channel->chan_hdr)) + offset,
         dest, copy_size);
 }
 memcpy(channel->mapped + offset, dest, nbytes);
 return 0;
}
