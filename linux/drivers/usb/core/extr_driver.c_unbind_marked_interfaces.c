
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ driver; } ;
struct usb_interface {scalar_t__ needs_binding; TYPE_2__ dev; } ;
struct TYPE_3__ {int bNumInterfaces; } ;
struct usb_host_config {struct usb_interface** interface; TYPE_1__ desc; } ;
struct usb_device {struct usb_host_config* actconfig; } ;


 int usb_forced_unbind_intf (struct usb_interface*) ;

__attribute__((used)) static void unbind_marked_interfaces(struct usb_device *udev)
{
 struct usb_host_config *config;
 int i;
 struct usb_interface *intf;

 config = udev->actconfig;
 if (config) {
  for (i = 0; i < config->desc.bNumInterfaces; ++i) {
   intf = config->interface[i];
   if (intf->dev.driver && intf->needs_binding)
    usb_forced_unbind_intf(intf);
  }
 }
}
