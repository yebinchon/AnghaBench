
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
 int f_ncm ;
 int f_ncm_inst ;
 scalar_t__ gadget_is_otg (int ) ;
 int otg_desc ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;

__attribute__((used)) static int ncm_do_config(struct usb_configuration *c)
{
 int status;



 if (gadget_is_otg(c->cdev->gadget)) {
  c->descriptors = otg_desc;
  c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 }

 f_ncm = usb_get_function(f_ncm_inst);
 if (IS_ERR(f_ncm))
  return PTR_ERR(f_ncm);

 status = usb_add_function(c, f_ncm);
 if (status < 0) {
  usb_put_function(f_ncm);
  return status;
 }

 return 0;
}
