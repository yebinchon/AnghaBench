
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qe_udc {int lock; TYPE_1__* usb_regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int usb_usber; int usb_usbmr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int USB_E_BSY_MASK ;
 int USB_E_IDLE_MASK ;
 int USB_E_RESET_MASK ;
 int USB_E_RXB_MASK ;
 int USB_E_TXB_MASK ;
 int USB_E_TXE_MASK ;
 int bsy_irq (struct qe_udc*) ;
 int idle_irq (struct qe_udc*) ;
 int in_be16 (int *) ;
 int out_be16 (int *,int) ;
 int reset_irq (struct qe_udc*) ;
 int rx_irq (struct qe_udc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_irq (struct qe_udc*) ;
 int txe_irq (struct qe_udc*) ;

__attribute__((used)) static irqreturn_t qe_udc_irq(int irq, void *_udc)
{
 struct qe_udc *udc = (struct qe_udc *)_udc;
 u16 irq_src;
 irqreturn_t status = IRQ_NONE;
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);

 irq_src = in_be16(&udc->usb_regs->usb_usber) &
  in_be16(&udc->usb_regs->usb_usbmr);

 out_be16(&udc->usb_regs->usb_usber, irq_src);

 if (irq_src & USB_E_IDLE_MASK) {
  idle_irq(udc);
  irq_src &= ~USB_E_IDLE_MASK;
  status = IRQ_HANDLED;
 }

 if (irq_src & USB_E_TXB_MASK) {
  tx_irq(udc);
  irq_src &= ~USB_E_TXB_MASK;
  status = IRQ_HANDLED;
 }

 if (irq_src & USB_E_RXB_MASK) {
  rx_irq(udc);
  irq_src &= ~USB_E_RXB_MASK;
  status = IRQ_HANDLED;
 }

 if (irq_src & USB_E_RESET_MASK) {
  reset_irq(udc);
  irq_src &= ~USB_E_RESET_MASK;
  status = IRQ_HANDLED;
 }

 if (irq_src & USB_E_BSY_MASK) {
  bsy_irq(udc);
  irq_src &= ~USB_E_BSY_MASK;
  status = IRQ_HANDLED;
 }

 if (irq_src & USB_E_TXE_MASK) {
  txe_irq(udc);
  irq_src &= ~USB_E_TXE_MASK;
  status = IRQ_HANDLED;
 }

 spin_unlock_irqrestore(&udc->lock, flags);

 return status;
}
