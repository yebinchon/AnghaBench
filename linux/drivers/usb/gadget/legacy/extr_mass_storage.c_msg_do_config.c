
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
 int f_msg ;
 int fi_msg ;
 struct fsg_opts* fsg_opts_from_func_inst (int ) ;
 scalar_t__ gadget_is_otg (int ) ;
 int otg_desc ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;

__attribute__((used)) static int msg_do_config(struct usb_configuration *c)
{
 struct fsg_opts *opts;
 int ret;

 if (gadget_is_otg(c->cdev->gadget)) {
  c->descriptors = otg_desc;
  c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 }

 opts = fsg_opts_from_func_inst(fi_msg);

 f_msg = usb_get_function(fi_msg);
 if (IS_ERR(f_msg))
  return PTR_ERR(f_msg);

 ret = usb_add_function(c, f_msg);
 if (ret)
  goto put_func;

 return 0;

put_func:
 usb_put_function(f_msg);
 return ret;
}
