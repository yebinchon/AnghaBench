
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_descriptor_header {scalar_t__ bDescriptorType; } ;


 scalar_t__ USB_DT_ENDPOINT ;

__attribute__((used)) static struct usb_descriptor_header**
next_ep_desc(struct usb_descriptor_header **t)
{
 for (; *t; t++) {
  if ((*t)->bDescriptorType == USB_DT_ENDPOINT)
   return t;
 }
 return ((void*)0);
}
