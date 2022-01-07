
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ch_space_offset; } ;
struct visorchannel {TYPE_1__ chan_hdr; } ;
struct signal_queue_header {int dummy; } ;
struct channel_header {int dummy; } ;


 int EINVAL ;
 int sig_queue_offset (TYPE_1__*,int ) ;
 int visorchannel_read (struct visorchannel*,int ,struct signal_queue_header*,int) ;

__attribute__((used)) static int sig_read_header(struct visorchannel *channel, u32 queue,
      struct signal_queue_header *sig_hdr)
{
 if (channel->chan_hdr.ch_space_offset < sizeof(struct channel_header))
  return -EINVAL;


 return visorchannel_read(channel,
     sig_queue_offset(&channel->chan_hdr, queue),
     sig_hdr, sizeof(struct signal_queue_header));
}
