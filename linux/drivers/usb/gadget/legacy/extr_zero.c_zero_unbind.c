
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int autoresume_timer ;
 int del_timer_sync (int *) ;
 int func_inst_lb ;
 int func_inst_ss ;
 int func_lb ;
 int func_ss ;
 int kfree (int *) ;
 int ** otg_desc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int zero_unbind(struct usb_composite_dev *cdev)
{
 del_timer_sync(&autoresume_timer);
 if (!IS_ERR_OR_NULL(func_ss))
  usb_put_function(func_ss);
 usb_put_function_instance(func_inst_ss);
 if (!IS_ERR_OR_NULL(func_lb))
  usb_put_function(func_lb);
 usb_put_function_instance(func_inst_lb);
 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);

 return 0;
}
