
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_function {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wValue; int wIndex; } ;
struct printer_dev {int interface; } ;





 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_RECIP_MASK ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_MASK ;
 struct printer_dev* func_to_printer (struct usb_function*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static bool gprinter_req_match(struct usb_function *f,
          const struct usb_ctrlrequest *ctrl,
          bool config0)
{
 struct printer_dev *dev = func_to_printer(f);
 u16 w_index = le16_to_cpu(ctrl->wIndex);
 u16 w_value = le16_to_cpu(ctrl->wValue);
 u16 w_length = le16_to_cpu(ctrl->wLength);

 if (config0)
  return 0;

 if ((ctrl->bRequestType & USB_RECIP_MASK) != USB_RECIP_INTERFACE ||
     (ctrl->bRequestType & USB_TYPE_MASK) != USB_TYPE_CLASS)
  return 0;

 switch (ctrl->bRequest) {
 case 130:
  w_index >>= 8;
  if (USB_DIR_IN & ctrl->bRequestType)
   break;
  return 0;
 case 129:
  if (!w_value && w_length == 1 &&
      (USB_DIR_IN & ctrl->bRequestType))
   break;
  return 0;
 case 128:
  if (!w_value && !w_length &&
     !(USB_DIR_IN & ctrl->bRequestType))
   break;

 default:
  return 0;
 }
 return w_index == dev->interface;
}
