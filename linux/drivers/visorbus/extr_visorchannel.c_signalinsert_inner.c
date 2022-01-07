
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct visorchannel {int dummy; } ;
struct signal_queue_header {int head; int max_slots; int tail; int num_sent; int num_overflows; } ;


 int EIO ;
 int SIG_WRITE_FIELD (struct visorchannel*,int ,struct signal_queue_header*,int ) ;
 int head ;
 int mb () ;
 int num_overflows ;
 int num_sent ;
 int sig_read_header (struct visorchannel*,int ,struct signal_queue_header*) ;
 int sig_write_data (struct visorchannel*,int ,struct signal_queue_header*,int,void*) ;

__attribute__((used)) static int signalinsert_inner(struct visorchannel *channel, u32 queue,
         void *msg)
{
 struct signal_queue_header sig_hdr;
 int err;

 err = sig_read_header(channel, queue, &sig_hdr);
 if (err)
  return err;
 sig_hdr.head = (sig_hdr.head + 1) % sig_hdr.max_slots;
 if (sig_hdr.head == sig_hdr.tail) {
  sig_hdr.num_overflows++;
  err = SIG_WRITE_FIELD(channel, queue, &sig_hdr, num_overflows);
  if (err)
   return err;
  return -EIO;
 }
 err = sig_write_data(channel, queue, &sig_hdr, sig_hdr.head, msg);
 if (err)
  return err;
 sig_hdr.num_sent++;




 mb();
 err = SIG_WRITE_FIELD(channel, queue, &sig_hdr, head);
 if (err)
  return err;
 err = SIG_WRITE_FIELD(channel, queue, &sig_hdr, num_sent);
 if (err)
  return err;
 return 0;
}
