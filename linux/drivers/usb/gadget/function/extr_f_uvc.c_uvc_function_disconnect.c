
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int func; } ;


 int usb_function_deactivate (int *) ;
 int uvcg_info (int *,char*,int) ;

void
uvc_function_disconnect(struct uvc_device *uvc)
{
 int ret;

 if ((ret = usb_function_deactivate(&uvc->func)) < 0)
  uvcg_info(&uvc->func, "UVC disconnect failed with %d\n", ret);
}
