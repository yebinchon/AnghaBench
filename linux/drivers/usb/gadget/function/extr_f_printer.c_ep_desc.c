
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int speed; } ;
struct usb_endpoint_descriptor {int dummy; } ;





__attribute__((used)) static inline struct usb_endpoint_descriptor *ep_desc(struct usb_gadget *gadget,
     struct usb_endpoint_descriptor *fs,
     struct usb_endpoint_descriptor *hs,
     struct usb_endpoint_descriptor *ss)
{
 switch (gadget->speed) {
 case 128:
  return ss;
 case 129:
  return hs;
 default:
  return fs;
 }
}
