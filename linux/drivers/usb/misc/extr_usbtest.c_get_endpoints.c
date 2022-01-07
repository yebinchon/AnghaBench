
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbtest_dev {int out_int_pipe; TYPE_3__* int_out; int in_int_pipe; TYPE_3__* int_in; int out_iso_pipe; TYPE_3__* iso_out; int in_iso_pipe; TYPE_3__* iso_in; int out_pipe; int in_pipe; TYPE_1__* info; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_6__ {scalar_t__ bAlternateSetting; unsigned int bNumEndpoints; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; struct usb_host_endpoint* endpoint; } ;
struct TYPE_7__ {int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ alt; int iso; int intr; } ;


 int EINVAL ;
 int USB_ENDPOINT_NUMBER_MASK ;



 int endpoint_update (int,struct usb_host_endpoint**,struct usb_host_endpoint**,struct usb_host_endpoint*) ;
 scalar_t__ override_alt ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int usb_endpoint_dir_in (TYPE_3__*) ;
 int usb_endpoint_type (TYPE_3__*) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_rcvintpipe (struct usb_device*,int) ;
 int usb_rcvisocpipe (struct usb_device*,int) ;
 int usb_set_interface (struct usb_device*,int ,scalar_t__) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_sndintpipe (struct usb_device*,int) ;
 int usb_sndisocpipe (struct usb_device*,int) ;

__attribute__((used)) static int
get_endpoints(struct usbtest_dev *dev, struct usb_interface *intf)
{
 int tmp;
 struct usb_host_interface *alt;
 struct usb_host_endpoint *in, *out;
 struct usb_host_endpoint *iso_in, *iso_out;
 struct usb_host_endpoint *int_in, *int_out;
 struct usb_device *udev;

 for (tmp = 0; tmp < intf->num_altsetting; tmp++) {
  unsigned ep;

  in = out = ((void*)0);
  iso_in = iso_out = ((void*)0);
  int_in = int_out = ((void*)0);
  alt = intf->altsetting + tmp;

  if (override_alt >= 0 &&
    override_alt != alt->desc.bAlternateSetting)
   continue;




  for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
   struct usb_host_endpoint *e;
   int edi;

   e = alt->endpoint + ep;
   edi = usb_endpoint_dir_in(&e->desc);

   switch (usb_endpoint_type(&e->desc)) {
   case 130:
    endpoint_update(edi, &in, &out, e);
    continue;
   case 129:
    if (dev->info->intr)
     endpoint_update(edi, &int_in, &int_out, e);
    continue;
   case 128:
    if (dev->info->iso)
     endpoint_update(edi, &iso_in, &iso_out, e);

   default:
    continue;
   }
  }
  if ((in && out) || iso_in || iso_out || int_in || int_out)
   goto found;
 }
 return -EINVAL;

found:
 udev = testdev_to_usbdev(dev);
 dev->info->alt = alt->desc.bAlternateSetting;
 if (alt->desc.bAlternateSetting != 0) {
  tmp = usb_set_interface(udev,
    alt->desc.bInterfaceNumber,
    alt->desc.bAlternateSetting);
  if (tmp < 0)
   return tmp;
 }

 if (in)
  dev->in_pipe = usb_rcvbulkpipe(udev,
   in->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
 if (out)
  dev->out_pipe = usb_sndbulkpipe(udev,
   out->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);

 if (iso_in) {
  dev->iso_in = &iso_in->desc;
  dev->in_iso_pipe = usb_rcvisocpipe(udev,
    iso_in->desc.bEndpointAddress
     & USB_ENDPOINT_NUMBER_MASK);
 }

 if (iso_out) {
  dev->iso_out = &iso_out->desc;
  dev->out_iso_pipe = usb_sndisocpipe(udev,
    iso_out->desc.bEndpointAddress
     & USB_ENDPOINT_NUMBER_MASK);
 }

 if (int_in) {
  dev->int_in = &int_in->desc;
  dev->in_int_pipe = usb_rcvintpipe(udev,
    int_in->desc.bEndpointAddress
     & USB_ENDPOINT_NUMBER_MASK);
 }

 if (int_out) {
  dev->int_out = &int_out->desc;
  dev->out_int_pipe = usb_sndintpipe(udev,
    int_out->desc.bEndpointAddress
     & USB_ENDPOINT_NUMBER_MASK);
 }
 return 0;
}
