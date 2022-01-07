
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int NOTIFY_OK ;


 int usb_gadget_vbus_connect (struct usb_gadget*) ;
 int usb_gadget_vbus_disconnect (struct usb_gadget*) ;

__attribute__((used)) static int pxa_udc_phy_event(struct notifier_block *nb, unsigned long action,
        void *data)
{
 struct usb_gadget *gadget = data;

 switch (action) {
 case 128:
  usb_gadget_vbus_connect(gadget);
  return NOTIFY_OK;
 case 129:
  usb_gadget_vbus_disconnect(gadget);
  return NOTIFY_OK;
 default:
  return NOTIFY_DONE;
 }
}
