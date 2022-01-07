
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct usb_driver {TYPE_1__ drvwrap; int * probe; scalar_t__ no_dynamic_id; } ;


 int driver_attr_new_id ;
 int driver_attr_remove_id ;
 int driver_create_file (int *,int *) ;
 int driver_remove_file (int *,int *) ;

__attribute__((used)) static int usb_create_newid_files(struct usb_driver *usb_drv)
{
 int error = 0;

 if (usb_drv->no_dynamic_id)
  goto exit;

 if (usb_drv->probe != ((void*)0)) {
  error = driver_create_file(&usb_drv->drvwrap.driver,
        &driver_attr_new_id);
  if (error == 0) {
   error = driver_create_file(&usb_drv->drvwrap.driver,
     &driver_attr_remove_id);
   if (error)
    driver_remove_file(&usb_drv->drvwrap.driver,
      &driver_attr_new_id);
  }
 }
exit:
 return error;
}
