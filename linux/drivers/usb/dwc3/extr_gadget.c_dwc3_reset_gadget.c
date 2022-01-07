
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ speed; } ;
struct dwc3 {int lock; int gadget_driver; TYPE_1__ gadget; } ;


 scalar_t__ USB_SPEED_UNKNOWN ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_udc_reset (TYPE_1__*,int ) ;

__attribute__((used)) static void dwc3_reset_gadget(struct dwc3 *dwc)
{
 if (!dwc->gadget_driver)
  return;

 if (dwc->gadget.speed != USB_SPEED_UNKNOWN) {
  spin_unlock(&dwc->lock);
  usb_gadget_udc_reset(&dwc->gadget, dwc->gadget_driver);
  spin_lock(&dwc->lock);
 }
}
