
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbip_device {int dummy; } ;
struct urb {int number_of_packets; int actual_length; scalar_t__ transfer_buffer_length; TYPE_1__* iso_frame_desc; scalar_t__ transfer_buffer; int pipe; } ;
struct TYPE_2__ {scalar_t__ actual_length; scalar_t__ offset; } ;


 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int usb_pipeisoc (int ) ;

void usbip_pad_iso(struct usbip_device *ud, struct urb *urb)
{
 int np = urb->number_of_packets;
 int i;
 int actualoffset = urb->actual_length;

 if (!usb_pipeisoc(urb->pipe))
  return;


 if (np == 0 || urb->actual_length == 0)
  return;





 if (urb->actual_length == urb->transfer_buffer_length)
  return;





 for (i = np-1; i > 0; i--) {
  actualoffset -= urb->iso_frame_desc[i].actual_length;
  memmove(urb->transfer_buffer + urb->iso_frame_desc[i].offset,
   urb->transfer_buffer + actualoffset,
   urb->iso_frame_desc[i].actual_length);
 }
}
