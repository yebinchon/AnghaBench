
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct visorchannel {int dummy; } ;
struct signal_queue_header {scalar_t__ head; scalar_t__ tail; } ;


 scalar_t__ sig_read_header (struct visorchannel*,int ,struct signal_queue_header*) ;

__attribute__((used)) static bool queue_empty(struct visorchannel *channel, u32 queue)
{
 struct signal_queue_header sig_hdr;

 if (sig_read_header(channel, queue, &sig_hdr))
  return 1;
 return (sig_hdr.head == sig_hdr.tail);
}
