
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct usb_device_driver {TYPE_1__ drvwrap; int name; } ;


 int driver_unregister (int *) ;
 int pr_info (char*,int ,int ) ;
 int usbcore_name ;

void usb_deregister_device_driver(struct usb_device_driver *udriver)
{
 pr_info("%s: deregistering device driver %s\n",
   usbcore_name, udriver->name);

 driver_unregister(&udriver->drvwrap.driver);
}
