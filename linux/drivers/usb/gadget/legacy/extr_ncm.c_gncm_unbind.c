
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int f_ncm ;
 int f_ncm_inst ;
 int kfree (int *) ;
 int ** otg_desc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int gncm_unbind(struct usb_composite_dev *cdev)
{
 if (!IS_ERR_OR_NULL(f_ncm))
  usb_put_function(f_ncm);
 if (!IS_ERR_OR_NULL(f_ncm_inst))
  usb_put_function_instance(f_ncm_inst);
 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);

 return 0;
}
