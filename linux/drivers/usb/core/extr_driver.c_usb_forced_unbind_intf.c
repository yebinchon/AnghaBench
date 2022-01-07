
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct usb_interface {int needs_binding; TYPE_1__ dev; } ;
struct usb_driver {int dummy; } ;


 int dev_dbg (TYPE_1__*,char*) ;
 struct usb_driver* to_usb_driver (int ) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;

void usb_forced_unbind_intf(struct usb_interface *intf)
{
 struct usb_driver *driver = to_usb_driver(intf->dev.driver);

 dev_dbg(&intf->dev, "forced unbind\n");
 usb_driver_release_interface(driver, intf);


 intf->needs_binding = 1;
}
