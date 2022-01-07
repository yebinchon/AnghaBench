
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct visorchannel {int chan_hdr; } ;
struct signal_queue_header {int signal_size; } ;


 int sig_data_offset (int *,int ,struct signal_queue_header*,int ) ;
 int visorchannel_write (struct visorchannel*,int,void*,int ) ;

__attribute__((used)) static int sig_write_data(struct visorchannel *channel, u32 queue,
     struct signal_queue_header *sig_hdr, u32 slot,
     void *data)
{
 int signal_data_offset = sig_data_offset(&channel->chan_hdr, queue,
       sig_hdr, slot);

 return visorchannel_write(channel, signal_data_offset,
      data, sig_hdr->signal_size);
}
