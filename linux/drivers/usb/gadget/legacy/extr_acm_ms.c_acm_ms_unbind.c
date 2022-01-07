
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int f_acm ;
 int f_acm_inst ;
 int f_msg ;
 int fi_msg ;
 int kfree (int *) ;
 int ** otg_desc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int acm_ms_unbind(struct usb_composite_dev *cdev)
{
 usb_put_function(f_msg);
 usb_put_function_instance(fi_msg);
 usb_put_function(f_acm);
 usb_put_function_instance(f_acm_inst);
 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);

 return 0;
}
