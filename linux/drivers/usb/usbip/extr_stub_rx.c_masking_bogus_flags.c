
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int desc; } ;
struct usb_device {scalar_t__ state; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;
struct usb_ctrlrequest {int bRequestType; int wLength; } ;
struct urb {unsigned int transfer_flags; scalar_t__ setup_packet; int pipe; struct usb_device* dev; int complete; scalar_t__ hcpriv; } ;


 unsigned int URB_DIR_MASK ;
 unsigned int URB_FREE_BUFFER ;
 unsigned int URB_ISO_ASAP ;
 unsigned int URB_NO_INTERRUPT ;
 unsigned int URB_NO_TRANSFER_DMA_MAP ;
 unsigned int URB_SHORT_NOT_OK ;
 unsigned int URB_ZERO_PACKET ;
 int USB_DIR_IN ;

 int USB_ENDPOINT_XFER_CONTROL ;

 scalar_t__ USB_STATE_UNAUTHENTICATED ;
 int usb_endpoint_dir_out (int *) ;
 int usb_endpoint_type (int *) ;
 size_t usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static void masking_bogus_flags(struct urb *urb)
{
 int xfertype;
 struct usb_device *dev;
 struct usb_host_endpoint *ep;
 int is_out;
 unsigned int allowed;

 if (!urb || urb->hcpriv || !urb->complete)
  return;
 dev = urb->dev;
 if ((!dev) || (dev->state < USB_STATE_UNAUTHENTICATED))
  return;

 ep = (usb_pipein(urb->pipe) ? dev->ep_in : dev->ep_out)
  [usb_pipeendpoint(urb->pipe)];
 if (!ep)
  return;

 xfertype = usb_endpoint_type(&ep->desc);
 if (xfertype == USB_ENDPOINT_XFER_CONTROL) {
  struct usb_ctrlrequest *setup =
   (struct usb_ctrlrequest *) urb->setup_packet;

  if (!setup)
   return;
  is_out = !(setup->bRequestType & USB_DIR_IN) ||
   !setup->wLength;
 } else {
  is_out = usb_endpoint_dir_out(&ep->desc);
 }


 allowed = (URB_NO_TRANSFER_DMA_MAP | URB_NO_INTERRUPT |
     URB_DIR_MASK | URB_FREE_BUFFER);
 switch (xfertype) {
 case 129:
  if (is_out)
   allowed |= URB_ZERO_PACKET;

 default:
  if (!is_out)
   allowed |= URB_SHORT_NOT_OK;
  break;
 case 128:
  allowed |= URB_ISO_ASAP;
  break;
 }
 urb->transfer_flags &= allowed;
}
