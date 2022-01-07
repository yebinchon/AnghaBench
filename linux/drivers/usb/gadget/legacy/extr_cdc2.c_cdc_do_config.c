
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_configuration {int bmAttributes; int descriptors; TYPE_1__* cdev; } ;
struct TYPE_2__ {int gadget; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int USB_CONFIG_ATT_WAKEUP ;
 int f_acm ;
 int f_ecm ;
 int fi_ecm ;
 int fi_serial ;
 scalar_t__ gadget_is_otg (int ) ;
 int otg_desc ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;
 int usb_remove_function (struct usb_configuration*,int ) ;

__attribute__((used)) static int cdc_do_config(struct usb_configuration *c)
{
 int status;

 if (gadget_is_otg(c->cdev->gadget)) {
  c->descriptors = otg_desc;
  c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 }

 f_ecm = usb_get_function(fi_ecm);
 if (IS_ERR(f_ecm)) {
  status = PTR_ERR(f_ecm);
  goto err_get_ecm;
 }

 status = usb_add_function(c, f_ecm);
 if (status)
  goto err_add_ecm;

 f_acm = usb_get_function(fi_serial);
 if (IS_ERR(f_acm)) {
  status = PTR_ERR(f_acm);
  goto err_get_acm;
 }

 status = usb_add_function(c, f_acm);
 if (status)
  goto err_add_acm;
 return 0;

err_add_acm:
 usb_put_function(f_acm);
err_get_acm:
 usb_remove_function(c, f_ecm);
err_add_ecm:
 usb_put_function(f_ecm);
err_get_ecm:
 return status;
}
