
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ direction; } ;
struct TYPE_4__ {int setup; int number_of_packets; } ;
struct TYPE_5__ {TYPE_1__ cmd_submit; } ;
struct usbip_header {TYPE_3__ base; TYPE_2__ u; } ;
struct urb {scalar_t__ transfer_buffer_length; int * transfer_buffer; int pipe; int setup_packet; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USBIP_CMD_SUBMIT ;
 scalar_t__ USBIP_DIR_IN ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int kfree (int *) ;
 int kmemdup (int *,int,int ) ;
 int * kzalloc (scalar_t__,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (struct urb*) ;
 int usbip_pack_pdu (struct usbip_header*,struct urb*,int ,int ) ;

__attribute__((used)) static int alloc_urb_from_cmd(struct urb **urbp,
         struct usbip_header *pdu, u8 type)
{
 struct urb *urb;

 if (type == USB_ENDPOINT_XFER_ISOC)
  urb = usb_alloc_urb(pdu->u.cmd_submit.number_of_packets,
       GFP_KERNEL);
 else
  urb = usb_alloc_urb(0, GFP_KERNEL);

 if (!urb)
  goto err;

 usbip_pack_pdu(pdu, urb, USBIP_CMD_SUBMIT, 0);

 if (urb->transfer_buffer_length > 0) {
  urb->transfer_buffer = kzalloc(urb->transfer_buffer_length,
   GFP_KERNEL);
  if (!urb->transfer_buffer)
   goto free_urb;
 }

 urb->setup_packet = kmemdup(&pdu->u.cmd_submit.setup, 8,
       GFP_KERNEL);
 if (!urb->setup_packet)
  goto free_buffer;





 urb->pipe |= pdu->base.direction == USBIP_DIR_IN ?
   USB_DIR_IN : USB_DIR_OUT;

 *urbp = urb;
 return 0;

free_buffer:
 kfree(urb->transfer_buffer);
 urb->transfer_buffer = ((void*)0);
free_urb:
 usb_free_urb(urb);
err:
 return -ENOMEM;
}
