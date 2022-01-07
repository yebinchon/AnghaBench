
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_configuration {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int f_uvc ;
 int fi_uvc ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;

__attribute__((used)) static int
webcam_config_bind(struct usb_configuration *c)
{
 int status = 0;

 f_uvc = usb_get_function(fi_uvc);
 if (IS_ERR(f_uvc))
  return PTR_ERR(f_uvc);

 status = usb_add_function(c, f_uvc);
 if (status < 0)
  usb_put_function(f_uvc);

 return status;
}
