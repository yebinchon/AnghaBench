
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int * f_serial ;
 int * fi_serial ;
 int kfree (int *) ;
 int n_ports ;
 int ** otg_desc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int gs_unbind(struct usb_composite_dev *cdev)
{
 int i;

 for (i = 0; i < n_ports; i++) {
  usb_put_function(f_serial[i]);
  usb_put_function_instance(fi_serial[i]);
 }

 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);

 return 0;
}
