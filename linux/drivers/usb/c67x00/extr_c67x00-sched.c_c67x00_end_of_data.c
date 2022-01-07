
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer_length; int actual_length; int transfer_flags; int pipe; } ;
struct c67x00_td {int pipe; struct urb* urb; } ;


 int URB_ZERO_PACKET ;
 int td_actual_bytes (struct c67x00_td*) ;
 int td_udev (struct c67x00_td*) ;
 scalar_t__ unlikely (int) ;
 int usb_maxpacket (int ,int ,scalar_t__) ;
 scalar_t__ usb_pipeout (int ) ;

__attribute__((used)) static inline int c67x00_end_of_data(struct c67x00_td *td)
{
 int maxps, need_empty, remaining;
 struct urb *urb = td->urb;
 int act_bytes;

 act_bytes = td_actual_bytes(td);

 if (unlikely(!act_bytes))
  return 1;

 maxps = usb_maxpacket(td_udev(td), td->pipe, usb_pipeout(td->pipe));

 if (unlikely(act_bytes < maxps))
  return 1;

 remaining = urb->transfer_buffer_length - urb->actual_length;
 need_empty = (urb->transfer_flags & URB_ZERO_PACKET) &&
     usb_pipeout(urb->pipe) && !(remaining % maxps);

 if (unlikely(!remaining && !need_empty))
  return 1;

 return 0;
}
