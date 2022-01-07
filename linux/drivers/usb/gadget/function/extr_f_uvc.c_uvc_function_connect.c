
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int func; } ;


 int usb_function_activate (int *) ;
 int uvcg_info (int *,char*,int) ;

void
uvc_function_connect(struct uvc_device *uvc)
{
 int ret;

 if ((ret = usb_function_activate(&uvc->func)) < 0)
  uvcg_info(&uvc->func, "UVC connect failed with %d\n", ret);
}
