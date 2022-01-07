
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_1__ desc; struct usb_host_endpoint* endpoint; } ;
struct TYPE_7__ {int bEndpointAddress; int bInterval; void* wMaxPacketSize; int bmAttributes; } ;
struct usb_host_endpoint {unsigned char* extra; int extralen; TYPE_2__ desc; int urb_list; } ;
struct usb_endpoint_descriptor {int bLength; int bEndpointAddress; int bInterval; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int speed; int quirks; } ;


 unsigned int BIT (int) ;
 int INIT_LIST_HEAD (int *) ;
 int USB_DT_ENDPOINT ;
 int USB_DT_ENDPOINT_AUDIO_SIZE ;
 int USB_DT_ENDPOINT_SIZE ;
 int USB_DT_INTERFACE ;
 int USB_ENDPOINT_DIR_MASK ;
 int USB_ENDPOINT_XFER_INT ;
 int USB_QUIRK_LINEAR_FRAME_INTR_BINTERVAL ;
 int USB_QUIRK_LINEAR_UFRAME_INTR_BINTERVAL ;





 int clamp (int,int,int) ;
 void* cpu_to_le16 (int) ;
 int dev_dbg (struct device*,char*,int,int ,char*) ;
 int dev_warn (struct device*,char*,int,int,int,int,...) ;
 int find_next_descriptor (unsigned char*,int,int ,int ,int*) ;
 int fls (int) ;
 unsigned short* full_speed_maxpacket_maxes ;
 unsigned short* high_speed_maxpacket_maxes ;
 unsigned short* low_speed_maxpacket_maxes ;
 int memcpy (TYPE_2__*,struct usb_endpoint_descriptor*,int) ;
 int plural (int) ;
 unsigned short* super_speed_maxpacket_maxes ;
 TYPE_4__* to_usb_device (struct device*) ;
 int usb_endpoint_maxp (TYPE_2__*) ;
 size_t usb_endpoint_type (TYPE_2__*) ;
 scalar_t__ usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_int (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor*) ;
 int usb_parse_ss_endpoint_companion (struct device*,int,int,int,struct usb_host_endpoint*,unsigned char*,int) ;

__attribute__((used)) static int usb_parse_endpoint(struct device *ddev, int cfgno, int inum,
    int asnum, struct usb_host_interface *ifp, int num_ep,
    unsigned char *buffer, int size)
{
 unsigned char *buffer0 = buffer;
 struct usb_endpoint_descriptor *d;
 struct usb_host_endpoint *endpoint;
 int n, i, j, retval;
 unsigned int maxp;
 const unsigned short *maxpacket_maxes;

 d = (struct usb_endpoint_descriptor *) buffer;
 buffer += d->bLength;
 size -= d->bLength;

 if (d->bLength >= USB_DT_ENDPOINT_AUDIO_SIZE)
  n = USB_DT_ENDPOINT_AUDIO_SIZE;
 else if (d->bLength >= USB_DT_ENDPOINT_SIZE)
  n = USB_DT_ENDPOINT_SIZE;
 else {
  dev_warn(ddev, "config %d interface %d altsetting %d has an "
      "invalid endpoint descriptor of length %d, skipping\n",
      cfgno, inum, asnum, d->bLength);
  goto skip_to_next_endpoint_or_interface_descriptor;
 }

 i = d->bEndpointAddress & ~USB_ENDPOINT_DIR_MASK;
 if (i >= 16 || i == 0) {
  dev_warn(ddev, "config %d interface %d altsetting %d has an "
      "invalid endpoint with address 0x%X, skipping\n",
      cfgno, inum, asnum, d->bEndpointAddress);
  goto skip_to_next_endpoint_or_interface_descriptor;
 }


 if (ifp->desc.bNumEndpoints >= num_ep)
  goto skip_to_next_endpoint_or_interface_descriptor;


 for (i = 0; i < ifp->desc.bNumEndpoints; ++i) {
  if (ifp->endpoint[i].desc.bEndpointAddress ==
      d->bEndpointAddress) {
   dev_warn(ddev, "config %d interface %d altsetting %d has a duplicate endpoint with address 0x%X, skipping\n",
       cfgno, inum, asnum, d->bEndpointAddress);
   goto skip_to_next_endpoint_or_interface_descriptor;
  }
 }

 endpoint = &ifp->endpoint[ifp->desc.bNumEndpoints];
 ++ifp->desc.bNumEndpoints;

 memcpy(&endpoint->desc, d, n);
 INIT_LIST_HEAD(&endpoint->urb_list);





 i = 0;
 j = 255;
 if (usb_endpoint_xfer_int(d)) {
  i = 1;
  switch (to_usb_device(ddev)->speed) {
  case 128:
  case 129:
  case 131:






   n = fls(d->bInterval*8);
   if (n == 0)
    n = 7;
   j = 16;







   if (to_usb_device(ddev)->quirks &
    USB_QUIRK_LINEAR_FRAME_INTR_BINTERVAL) {
    n = clamp(fls(d->bInterval) + 3, i, j);
    i = j = n;
   }




   if (to_usb_device(ddev)->quirks &
    USB_QUIRK_LINEAR_UFRAME_INTR_BINTERVAL) {
    n = clamp(fls(d->bInterval), i, j);
    i = j = n;
   }
   break;
  default:





   n = 10;
   break;
  }
 } else if (usb_endpoint_xfer_isoc(d)) {
  i = 1;
  j = 16;
  switch (to_usb_device(ddev)->speed) {
  case 131:
   n = 7;
   break;
  default:
   n = 4;
   break;
  }
 }
 if (d->bInterval < i || d->bInterval > j) {
  dev_warn(ddev, "config %d interface %d altsetting %d "
      "endpoint 0x%X has an invalid bInterval %d, "
      "changing to %d\n",
      cfgno, inum, asnum,
      d->bEndpointAddress, d->bInterval, n);
  endpoint->desc.bInterval = n;
 }





 if (to_usb_device(ddev)->speed == 130 &&
   usb_endpoint_xfer_bulk(d)) {
  dev_warn(ddev, "config %d interface %d altsetting %d "
      "endpoint 0x%X is Bulk; changing to Interrupt\n",
      cfgno, inum, asnum, d->bEndpointAddress);
  endpoint->desc.bmAttributes = USB_ENDPOINT_XFER_INT;
  endpoint->desc.bInterval = 1;
  if (usb_endpoint_maxp(&endpoint->desc) > 8)
   endpoint->desc.wMaxPacketSize = cpu_to_le16(8);
 }


 maxp = usb_endpoint_maxp(&endpoint->desc);
 if (maxp == 0) {
  dev_warn(ddev, "config %d interface %d altsetting %d endpoint 0x%X has wMaxPacketSize 0, skipping\n",
      cfgno, inum, asnum, d->bEndpointAddress);
  goto skip_to_next_endpoint_or_interface_descriptor;
 }


 i = 0;
 switch (to_usb_device(ddev)->speed) {
 case 130:
  maxpacket_maxes = low_speed_maxpacket_maxes;
  break;
 case 132:
  maxpacket_maxes = full_speed_maxpacket_maxes;
  break;
 case 131:

  if (usb_endpoint_xfer_int(d) || usb_endpoint_xfer_isoc(d)) {
   i = maxp & (BIT(12) | BIT(11));
   maxp &= ~i;
  }

 default:
  maxpacket_maxes = high_speed_maxpacket_maxes;
  break;
 case 129:
 case 128:
  maxpacket_maxes = super_speed_maxpacket_maxes;
  break;
 }
 j = maxpacket_maxes[usb_endpoint_type(&endpoint->desc)];

 if (maxp > j) {
  dev_warn(ddev, "config %d interface %d altsetting %d endpoint 0x%X has invalid maxpacket %d, setting to %d\n",
      cfgno, inum, asnum, d->bEndpointAddress, maxp, j);
  maxp = j;
  endpoint->desc.wMaxPacketSize = cpu_to_le16(i | maxp);
 }






 if (to_usb_device(ddev)->speed == 131
   && usb_endpoint_xfer_bulk(d)) {
  if (maxp != 512)
   dev_warn(ddev, "config %d interface %d altsetting %d "
    "bulk endpoint 0x%X has invalid maxpacket %d\n",
    cfgno, inum, asnum, d->bEndpointAddress,
    maxp);
 }


 if (to_usb_device(ddev)->speed >= 129)
  usb_parse_ss_endpoint_companion(ddev, cfgno,
    inum, asnum, endpoint, buffer, size);



 endpoint->extra = buffer;
 i = find_next_descriptor(buffer, size, USB_DT_ENDPOINT,
   USB_DT_INTERFACE, &n);
 endpoint->extralen = i;
 retval = buffer - buffer0 + i;
 if (n > 0)
  dev_dbg(ddev, "skipped %d descriptor%s after %s\n",
      n, plural(n), "endpoint");
 return retval;

skip_to_next_endpoint_or_interface_descriptor:
 i = find_next_descriptor(buffer, size, USB_DT_ENDPOINT,
     USB_DT_INTERFACE, ((void*)0));
 return buffer - buffer0 + i;
}
