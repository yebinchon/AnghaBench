
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xusb_udc {int (* read_fn ) (scalar_t__) ;int lock; scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ XUSB_IER_OFFSET ;
 int XUSB_STATUS_EP0_BUFF1_COMP_MASK ;
 int XUSB_STATUS_EP1_BUFF1_COMP_MASK ;
 int XUSB_STATUS_EP1_BUFF2_COMP_MASK ;
 int XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK ;
 int XUSB_STATUS_INTR_EVENT_MASK ;
 scalar_t__ XUSB_STATUS_OFFSET ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,scalar_t__,int) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__) ;
 int stub5 (scalar_t__,scalar_t__,int) ;
 int xudc_ctrl_ep_handler (struct xusb_udc*,int) ;
 int xudc_nonctrl_ep_handler (struct xusb_udc*,int,int) ;
 int xudc_startup_handler (struct xusb_udc*,int) ;

__attribute__((used)) static irqreturn_t xudc_irq(int irq, void *_udc)
{
 struct xusb_udc *udc = _udc;
 u32 intrstatus;
 u32 ier;
 u8 index;
 u32 bufintr;
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);





 ier = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
 ier &= ~XUSB_STATUS_INTR_EVENT_MASK;
 udc->write_fn(udc->addr, XUSB_IER_OFFSET, ier);


 intrstatus = udc->read_fn(udc->addr + XUSB_STATUS_OFFSET);


 if (intrstatus & XUSB_STATUS_INTR_EVENT_MASK) {







  xudc_startup_handler(udc, intrstatus);
 }


 if (intrstatus & XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK) {

  ier = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
  ier |= XUSB_STATUS_INTR_EVENT_MASK;
  udc->write_fn(udc->addr, XUSB_IER_OFFSET, ier);

  if (intrstatus & XUSB_STATUS_EP0_BUFF1_COMP_MASK)
   xudc_ctrl_ep_handler(udc, intrstatus);

  for (index = 1; index < 8; index++) {
   bufintr = ((intrstatus &
      (XUSB_STATUS_EP1_BUFF1_COMP_MASK <<
      (index - 1))) || (intrstatus &
      (XUSB_STATUS_EP1_BUFF2_COMP_MASK <<
      (index - 1))));
   if (bufintr) {
    xudc_nonctrl_ep_handler(udc, index,
       intrstatus);
   }
  }
 }

 spin_unlock_irqrestore(&udc->lock, flags);
 return IRQ_HANDLED;
}
