
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int f_uvc ;
 int fi_uvc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int
webcam_unbind(struct usb_composite_dev *cdev)
{
 if (!IS_ERR_OR_NULL(f_uvc))
  usb_put_function(f_uvc);
 if (!IS_ERR_OR_NULL(fi_uvc))
  usb_put_function_instance(fi_uvc);
 return 0;
}
