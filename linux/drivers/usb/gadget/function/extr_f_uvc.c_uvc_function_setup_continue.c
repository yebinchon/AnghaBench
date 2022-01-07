
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* config; } ;
struct uvc_device {TYPE_2__ func; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int usb_composite_setup_continue (struct usb_composite_dev*) ;

void uvc_function_setup_continue(struct uvc_device *uvc)
{
 struct usb_composite_dev *cdev = uvc->func.config->cdev;

 usb_composite_setup_continue(cdev);
}
