
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int f_printer ;
 int fi_printer ;
 int kfree (int *) ;
 int ** otg_desc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int printer_unbind(struct usb_composite_dev *cdev)
{
 usb_put_function(f_printer);
 usb_put_function_instance(fi_printer);

 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);

 return 0;
}
