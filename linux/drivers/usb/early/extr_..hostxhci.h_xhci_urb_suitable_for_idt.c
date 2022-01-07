
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ transfer_buffer_length; int transfer_flags; int num_sgs; TYPE_1__* ep; } ;
struct TYPE_2__ {int desc; } ;


 scalar_t__ TRB_IDT_MAX_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 scalar_t__ usb_endpoint_maxp (int *) ;
 int usb_endpoint_xfer_isoc (int *) ;
 scalar_t__ usb_urb_dir_out (struct urb*) ;

__attribute__((used)) static inline bool xhci_urb_suitable_for_idt(struct urb *urb)
{
 if (!usb_endpoint_xfer_isoc(&urb->ep->desc) && usb_urb_dir_out(urb) &&
     usb_endpoint_maxp(&urb->ep->desc) >= TRB_IDT_MAX_SIZE &&
     urb->transfer_buffer_length <= TRB_IDT_MAX_SIZE &&
     !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP) &&
     !urb->num_sgs)
  return 1;

 return 0;
}
