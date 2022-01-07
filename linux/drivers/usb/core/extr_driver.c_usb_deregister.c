
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct usb_driver {TYPE_1__ drvwrap; int name; } ;


 int driver_unregister (int *) ;
 int pr_info (char*,int ,int ) ;
 int usb_free_dynids (struct usb_driver*) ;
 int usb_remove_newid_files (struct usb_driver*) ;
 int usbcore_name ;

void usb_deregister(struct usb_driver *driver)
{
 pr_info("%s: deregistering interface driver %s\n",
   usbcore_name, driver->name);

 usb_remove_newid_files(driver);
 driver_unregister(&driver->drvwrap.driver);
 usb_free_dynids(driver);
}
