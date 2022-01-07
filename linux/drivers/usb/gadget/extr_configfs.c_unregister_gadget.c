
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * udc_name; } ;
struct TYPE_3__ {TYPE_2__ gadget_driver; } ;
struct gadget_info {TYPE_1__ composite; } ;


 int ENODEV ;
 int kfree (int *) ;
 int usb_gadget_unregister_driver (TYPE_2__*) ;

__attribute__((used)) static int unregister_gadget(struct gadget_info *gi)
{
 int ret;

 if (!gi->composite.gadget_driver.udc_name)
  return -ENODEV;

 ret = usb_gadget_unregister_driver(&gi->composite.gadget_driver);
 if (ret)
  return ret;
 kfree(gi->composite.gadget_driver.udc_name);
 gi->composite.gadget_driver.udc_name = ((void*)0);
 return 0;
}
