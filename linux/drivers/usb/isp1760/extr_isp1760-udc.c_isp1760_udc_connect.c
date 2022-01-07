
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_udc {int vbus_timer; int gadget; } ;


 scalar_t__ ISP1760_VBUS_POLL_INTERVAL ;
 int USB_STATE_POWERED ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int usb_gadget_set_state (int *,int ) ;

__attribute__((used)) static void isp1760_udc_connect(struct isp1760_udc *udc)
{
 usb_gadget_set_state(&udc->gadget, USB_STATE_POWERED);
 mod_timer(&udc->vbus_timer, jiffies + ISP1760_VBUS_POLL_INTERVAL);
}
