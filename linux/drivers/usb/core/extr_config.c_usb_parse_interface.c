
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface_descriptor {scalar_t__ bLength; int bInterfaceNumber; int bAlternateSetting; } ;
struct usb_interface_cache {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_4__ {int bAlternateSetting; int bNumEndpoints; } ;
struct usb_host_interface {unsigned char* extra; int extralen; int endpoint; TYPE_2__ desc; } ;
struct usb_host_endpoint {int dummy; } ;
struct TYPE_3__ {int bNumInterfaces; } ;
struct usb_host_config {struct usb_interface_cache** intf_cache; TYPE_1__ desc; } ;
struct usb_descriptor_header {scalar_t__ bDescriptorType; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ USB_DT_ENDPOINT ;
 scalar_t__ USB_DT_INTERFACE ;
 scalar_t__ USB_DT_INTERFACE_SIZE ;
 int USB_MAXENDPOINTS ;
 int dev_dbg (struct device*,char*,int,int ,char*) ;
 int dev_warn (struct device*,char*,int,int,int,...) ;
 int find_next_descriptor (unsigned char*,int,scalar_t__,scalar_t__,int*) ;
 int kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,struct usb_interface_descriptor*,scalar_t__) ;
 int plural (int) ;
 int usb_parse_endpoint (struct device*,int,int,int,struct usb_host_interface*,int,unsigned char*,int) ;

__attribute__((used)) static int usb_parse_interface(struct device *ddev, int cfgno,
    struct usb_host_config *config, unsigned char *buffer, int size,
    u8 inums[], u8 nalts[])
{
 unsigned char *buffer0 = buffer;
 struct usb_interface_descriptor *d;
 int inum, asnum;
 struct usb_interface_cache *intfc;
 struct usb_host_interface *alt;
 int i, n;
 int len, retval;
 int num_ep, num_ep_orig;

 d = (struct usb_interface_descriptor *) buffer;
 buffer += d->bLength;
 size -= d->bLength;

 if (d->bLength < USB_DT_INTERFACE_SIZE)
  goto skip_to_next_interface_descriptor;


 intfc = ((void*)0);
 inum = d->bInterfaceNumber;
 for (i = 0; i < config->desc.bNumInterfaces; ++i) {
  if (inums[i] == inum) {
   intfc = config->intf_cache[i];
   break;
  }
 }
 if (!intfc || intfc->num_altsetting >= nalts[i])
  goto skip_to_next_interface_descriptor;


 asnum = d->bAlternateSetting;
 for ((i = 0, alt = &intfc->altsetting[0]);
       i < intfc->num_altsetting;
      (++i, ++alt)) {
  if (alt->desc.bAlternateSetting == asnum) {
   dev_warn(ddev, "Duplicate descriptor for config %d "
       "interface %d altsetting %d, skipping\n",
       cfgno, inum, asnum);
   goto skip_to_next_interface_descriptor;
  }
 }

 ++intfc->num_altsetting;
 memcpy(&alt->desc, d, USB_DT_INTERFACE_SIZE);



 alt->extra = buffer;
 i = find_next_descriptor(buffer, size, USB_DT_ENDPOINT,
     USB_DT_INTERFACE, &n);
 alt->extralen = i;
 if (n > 0)
  dev_dbg(ddev, "skipped %d descriptor%s after %s\n",
      n, plural(n), "interface");
 buffer += i;
 size -= i;


 num_ep = num_ep_orig = alt->desc.bNumEndpoints;
 alt->desc.bNumEndpoints = 0;
 if (num_ep > USB_MAXENDPOINTS) {
  dev_warn(ddev, "too many endpoints for config %d interface %d "
      "altsetting %d: %d, using maximum allowed: %d\n",
      cfgno, inum, asnum, num_ep, USB_MAXENDPOINTS);
  num_ep = USB_MAXENDPOINTS;
 }

 if (num_ep > 0) {

  len = sizeof(struct usb_host_endpoint) * num_ep;
  alt->endpoint = kzalloc(len, GFP_KERNEL);
  if (!alt->endpoint)
   return -ENOMEM;
 }


 n = 0;
 while (size > 0) {
  if (((struct usb_descriptor_header *) buffer)->bDescriptorType
       == USB_DT_INTERFACE)
   break;
  retval = usb_parse_endpoint(ddev, cfgno, inum, asnum, alt,
      num_ep, buffer, size);
  if (retval < 0)
   return retval;
  ++n;

  buffer += retval;
  size -= retval;
 }

 if (n != num_ep_orig)
  dev_warn(ddev, "config %d interface %d altsetting %d has %d "
      "endpoint descriptor%s, different from the interface "
      "descriptor's value: %d\n",
      cfgno, inum, asnum, n, plural(n), num_ep_orig);
 return buffer - buffer0;

skip_to_next_interface_descriptor:
 i = find_next_descriptor(buffer, size, USB_DT_INTERFACE,
     USB_DT_INTERFACE, ((void*)0));
 return buffer - buffer0 + i;
}
