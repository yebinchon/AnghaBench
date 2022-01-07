
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct usb_hcd {int dummy; } ;
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int transfer_flags; int pipe; int dev; } ;
struct max3421_hcd {scalar_t__ curr_len; } ;


 int URB_ZERO_PACKET ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 scalar_t__ usb_maxpacket (int ,int ,int) ;

__attribute__((used)) static int
max3421_transfer_out_done(struct usb_hcd *hcd, struct urb *urb)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);

 urb->actual_length += max3421_hcd->curr_len;
 if (urb->actual_length < urb->transfer_buffer_length)
  return 0;
 if (urb->transfer_flags & URB_ZERO_PACKET) {







  u32 max_packet = usb_maxpacket(urb->dev, urb->pipe, 1);

  if (max3421_hcd->curr_len == max_packet)
   return 0;
 }
 return 1;
}
