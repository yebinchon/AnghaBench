
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_configuration {int bmAttributes; int descriptors; TYPE_1__* cdev; } ;
struct fsg_opts {int dummy; } ;
struct TYPE_2__ {int gadget; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int USB_CONFIG_ATT_WAKEUP ;
 int f_acm ;
 int f_acm_inst ;
 int f_msg ;
 int fi_msg ;
 struct fsg_opts* fsg_opts_from_func_inst (int ) ;
 scalar_t__ gadget_is_otg (int ) ;
 int otg_desc ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;
 int usb_remove_function (struct usb_configuration*,int ) ;

__attribute__((used)) static int acm_ms_do_config(struct usb_configuration *c)
{
 struct fsg_opts *opts;
 int status;

 if (gadget_is_otg(c->cdev->gadget)) {
  c->descriptors = otg_desc;
  c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 }

 opts = fsg_opts_from_func_inst(fi_msg);

 f_acm = usb_get_function(f_acm_inst);
 if (IS_ERR(f_acm))
  return PTR_ERR(f_acm);

 f_msg = usb_get_function(fi_msg);
 if (IS_ERR(f_msg)) {
  status = PTR_ERR(f_msg);
  goto put_acm;
 }

 status = usb_add_function(c, f_acm);
 if (status < 0)
  goto put_msg;

 status = usb_add_function(c, f_msg);
 if (status)
  goto remove_acm;

 return 0;
remove_acm:
 usb_remove_function(c, f_acm);
put_msg:
 usb_put_function(f_msg);
put_acm:
 usb_put_function(f_acm);
 return status;
}
