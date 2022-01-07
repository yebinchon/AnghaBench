
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget_strings {int dummy; } ;
struct usb_gadget_string_container {scalar_t__ stash; } ;



__attribute__((used)) static struct usb_gadget_strings **get_containers_gs(
  struct usb_gadget_string_container *uc)
{
 return (struct usb_gadget_strings **)uc->stash;
}
