
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_queue_header {int sig_base_offset; int signal_size; } ;
struct channel_header {int dummy; } ;


 int sig_queue_offset (struct channel_header*,int) ;

__attribute__((used)) static int sig_data_offset(struct channel_header *chan_hdr, int q,
      struct signal_queue_header *sig_hdr, int slot)
{
 return (sig_queue_offset(chan_hdr, q) + sig_hdr->sig_base_offset +
        (slot * sig_hdr->signal_size));
}
