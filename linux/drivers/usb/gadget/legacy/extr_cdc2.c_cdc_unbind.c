
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int f_acm ;
 int f_ecm ;
 int fi_ecm ;
 int fi_serial ;
 int kfree (int *) ;
 int ** otg_desc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int cdc_unbind(struct usb_composite_dev *cdev)
{
 usb_put_function(f_acm);
 usb_put_function_instance(fi_serial);
 if (!IS_ERR_OR_NULL(f_ecm))
  usb_put_function(f_ecm);
 if (!IS_ERR_OR_NULL(fi_ecm))
  usb_put_function_instance(fi_ecm);
 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);

 return 0;
}
