
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qe_udc {scalar_t__ usb_state; TYPE_1__* usb_regs; } ;
struct TYPE_2__ {int usb_usbs; } ;


 int USB_IDLE_STATUS_MASK ;
 scalar_t__ USB_STATE_SUSPENDED ;
 int in_8 (int *) ;
 int resume_irq (struct qe_udc*) ;
 int suspend_irq (struct qe_udc*) ;

__attribute__((used)) static void idle_irq(struct qe_udc *udc)
{
 u8 usbs;

 usbs = in_8(&udc->usb_regs->usb_usbs);
 if (usbs & USB_IDLE_STATUS_MASK) {
  if ((udc->usb_state) != USB_STATE_SUSPENDED)
   suspend_irq(udc);
 } else {
  if (udc->usb_state == USB_STATE_SUSPENDED)
   resume_irq(udc);
 }
}
