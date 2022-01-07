
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct usb_configuration {TYPE_1__* cdev; } ;
struct TYPE_4__ {int bmAttributes; int descriptors; } ;
struct TYPE_3__ {struct usb_gadget* gadget; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int USB_CONFIG_ATT_WAKEUP ;
 int f_printer ;
 int fi_printer ;
 scalar_t__ gadget_is_otg (struct usb_gadget*) ;
 int otg_desc ;
 TYPE_2__ printer_cfg_driver ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_ep_autoconfig_reset (struct usb_gadget*) ;
 int usb_gadget_set_selfpowered (struct usb_gadget*) ;
 int usb_get_function (int ) ;
 int usb_put_function (int ) ;

__attribute__((used)) static int printer_do_config(struct usb_configuration *c)
{
 struct usb_gadget *gadget = c->cdev->gadget;
 int status = 0;

 usb_ep_autoconfig_reset(gadget);

 usb_gadget_set_selfpowered(gadget);

 if (gadget_is_otg(gadget)) {
  printer_cfg_driver.descriptors = otg_desc;
  printer_cfg_driver.bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 }

 f_printer = usb_get_function(fi_printer);
 if (IS_ERR(f_printer))
  return PTR_ERR(f_printer);

 status = usb_add_function(c, f_printer);
 if (status < 0)
  usb_put_function(f_printer);

 return status;
}
