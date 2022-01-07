
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct usb_driver {TYPE_1__ drvwrap; int * probe; scalar_t__ no_dynamic_id; } ;


 int driver_attr_new_id ;
 int driver_attr_remove_id ;
 int driver_remove_file (int *,int *) ;

__attribute__((used)) static void usb_remove_newid_files(struct usb_driver *usb_drv)
{
 if (usb_drv->no_dynamic_id)
  return;

 if (usb_drv->probe != ((void*)0)) {
  driver_remove_file(&usb_drv->drvwrap.driver,
    &driver_attr_remove_id);
  driver_remove_file(&usb_drv->drvwrap.driver,
       &driver_attr_new_id);
 }
}
