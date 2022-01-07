
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;


 scalar_t__ uas_is_interface (struct usb_host_interface*) ;

__attribute__((used)) static struct usb_host_interface *uas_find_uas_alt_setting(
  struct usb_interface *intf)
{
 int i;

 for (i = 0; i < intf->num_altsetting; i++) {
  struct usb_host_interface *alt = &intf->altsetting[i];

  if (uas_is_interface(alt))
   return alt;
 }

 return ((void*)0);
}
