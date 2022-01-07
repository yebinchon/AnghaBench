
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ number_of_packets; } ;
struct TYPE_6__ {TYPE_2__ cmd_submit; } ;
struct TYPE_4__ {int ep; int direction; } ;
struct usbip_header {TYPE_3__ u; TYPE_1__ base; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_host_endpoint {struct usb_endpoint_descriptor desc; } ;
struct usb_device {int dev; struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;
struct stub_device {struct usb_device* udev; } ;


 int USBIP_DIR_IN ;
 int USBIP_DIR_OUT ;
 scalar_t__ USBIP_MAX_ISO_PACKETS ;
 int dev_err (int *,char*,int) ;
 scalar_t__ usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_control (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_int (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor*) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int) ;
 int usb_rcvintpipe (struct usb_device*,int) ;
 int usb_rcvisocpipe (struct usb_device*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_sndctrlpipe (struct usb_device*,int) ;
 int usb_sndintpipe (struct usb_device*,int) ;
 int usb_sndisocpipe (struct usb_device*,int) ;

__attribute__((used)) static int get_pipe(struct stub_device *sdev, struct usbip_header *pdu)
{
 struct usb_device *udev = sdev->udev;
 struct usb_host_endpoint *ep;
 struct usb_endpoint_descriptor *epd = ((void*)0);
 int epnum = pdu->base.ep;
 int dir = pdu->base.direction;

 if (epnum < 0 || epnum > 15)
  goto err_ret;

 if (dir == USBIP_DIR_IN)
  ep = udev->ep_in[epnum & 0x7f];
 else
  ep = udev->ep_out[epnum & 0x7f];
 if (!ep)
  goto err_ret;

 epd = &ep->desc;

 if (usb_endpoint_xfer_control(epd)) {
  if (dir == USBIP_DIR_OUT)
   return usb_sndctrlpipe(udev, epnum);
  else
   return usb_rcvctrlpipe(udev, epnum);
 }

 if (usb_endpoint_xfer_bulk(epd)) {
  if (dir == USBIP_DIR_OUT)
   return usb_sndbulkpipe(udev, epnum);
  else
   return usb_rcvbulkpipe(udev, epnum);
 }

 if (usb_endpoint_xfer_int(epd)) {
  if (dir == USBIP_DIR_OUT)
   return usb_sndintpipe(udev, epnum);
  else
   return usb_rcvintpipe(udev, epnum);
 }

 if (usb_endpoint_xfer_isoc(epd)) {

  if (pdu->u.cmd_submit.number_of_packets < 0 ||
      pdu->u.cmd_submit.number_of_packets >
      USBIP_MAX_ISO_PACKETS) {
   dev_err(&sdev->udev->dev,
    "CMD_SUBMIT: isoc invalid num packets %d\n",
    pdu->u.cmd_submit.number_of_packets);
   return -1;
  }
  if (dir == USBIP_DIR_OUT)
   return usb_sndisocpipe(udev, epnum);
  else
   return usb_rcvisocpipe(udev, epnum);
 }

err_ret:

 dev_err(&sdev->udev->dev, "CMD_SUBMIT: invalid epnum %d\n", epnum);
 return -1;
}
