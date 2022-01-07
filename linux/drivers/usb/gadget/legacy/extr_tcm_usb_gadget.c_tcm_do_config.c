
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_configuration {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int f_tcm ;
 int fi_tcm ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;

__attribute__((used)) static int tcm_do_config(struct usb_configuration *c)
{
 int status;

 f_tcm = usb_get_function(fi_tcm);
 if (IS_ERR(f_tcm))
  return PTR_ERR(f_tcm);

 status = usb_add_function(c, f_tcm);
 if (status < 0) {
  usb_put_function(f_tcm);
  return status;
 }

 return 0;
}
