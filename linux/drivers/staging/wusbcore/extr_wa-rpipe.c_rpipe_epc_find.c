
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_wireless_ep_comp_descriptor {int dummy; } ;
struct TYPE_2__ {scalar_t__ bEndpointAddress; } ;
struct usb_host_endpoint {size_t extralen; void* extra; TYPE_1__ desc; } ;
struct usb_descriptor_header {size_t bLength; int bDescriptorType; } ;
struct device {int dummy; } ;


 int USB_DT_WIRELESS_ENDPOINT_COMP ;
 int dev_err (struct device*,char*,scalar_t__,int,size_t,...) ;
 struct usb_wireless_ep_comp_descriptor epc0 ;

__attribute__((used)) static struct usb_wireless_ep_comp_descriptor *rpipe_epc_find(
  struct device *dev, struct usb_host_endpoint *ep)
{
 void *itr;
 size_t itr_size;
 struct usb_descriptor_header *hdr;
 struct usb_wireless_ep_comp_descriptor *epcd;

 if (ep->desc.bEndpointAddress == 0) {
  epcd = &epc0;
  goto out;
 }
 itr = ep->extra;
 itr_size = ep->extralen;
 epcd = ((void*)0);
 while (itr_size > 0) {
  if (itr_size < sizeof(*hdr)) {
   dev_err(dev, "HW Bug? ep 0x%02x: extra descriptors "
    "at offset %zu: only %zu bytes left\n",
    ep->desc.bEndpointAddress,
    itr - (void *) ep->extra, itr_size);
   break;
  }
  hdr = itr;
  if (hdr->bDescriptorType == USB_DT_WIRELESS_ENDPOINT_COMP) {
   epcd = itr;
   break;
  }
  if (hdr->bLength > itr_size) {
   dev_err(dev, "HW Bug? ep 0x%02x: extra descriptor "
    "at offset %zu (type 0x%02x) "
    "length %d but only %zu bytes left\n",
    ep->desc.bEndpointAddress,
    itr - (void *) ep->extra, hdr->bDescriptorType,
    hdr->bLength, itr_size);
   break;
  }
  itr += hdr->bLength;
  itr_size -= hdr->bLength;
 }
out:
 return epcd;
}
