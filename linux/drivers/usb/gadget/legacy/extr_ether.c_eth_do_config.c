
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_configuration {TYPE_1__* cdev; int bmAttributes; int descriptors; } ;
struct TYPE_2__ {int gadget; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int USB_CONFIG_ATT_WAKEUP ;
 scalar_t__ can_support_ecm (int ) ;
 int f_ecm ;
 int f_eem ;
 int f_geth ;
 int fi_ecm ;
 int fi_eem ;
 int fi_geth ;
 scalar_t__ gadget_is_otg (int ) ;
 int otg_desc ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;
 scalar_t__ use_eem ;

__attribute__((used)) static int eth_do_config(struct usb_configuration *c)
{
 int status = 0;



 if (gadget_is_otg(c->cdev->gadget)) {
  c->descriptors = otg_desc;
  c->bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 }

 if (use_eem) {
  f_eem = usb_get_function(fi_eem);
  if (IS_ERR(f_eem))
   return PTR_ERR(f_eem);

  status = usb_add_function(c, f_eem);
  if (status < 0)
   usb_put_function(f_eem);

  return status;
 } else if (can_support_ecm(c->cdev->gadget)) {
  f_ecm = usb_get_function(fi_ecm);
  if (IS_ERR(f_ecm))
   return PTR_ERR(f_ecm);

  status = usb_add_function(c, f_ecm);
  if (status < 0)
   usb_put_function(f_ecm);

  return status;
 } else {
  f_geth = usb_get_function(fi_geth);
  if (IS_ERR(f_geth))
   return PTR_ERR(f_geth);

  status = usb_add_function(c, f_geth);
  if (status < 0)
   usb_put_function(f_geth);

  return status;
 }

}
