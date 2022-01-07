
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int f_tcm ;
 int usb_put_function (int ) ;

__attribute__((used)) static int guas_unbind(struct usb_composite_dev *cdev)
{
 if (!IS_ERR_OR_NULL(f_tcm))
  usb_put_function(f_tcm);

 return 0;
}
