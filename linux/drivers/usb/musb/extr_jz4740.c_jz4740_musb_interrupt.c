
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int int_usb; int lock; void* int_rx; void* int_tx; int mregs; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int MUSB_INTRRX ;
 int MUSB_INTRTX ;
 int MUSB_INTRUSB ;
 int MUSB_INTR_RESET ;
 int MUSB_INTR_RESUME ;
 int MUSB_INTR_SOF ;
 int MUSB_INTR_SUSPEND ;
 int musb_interrupt (struct musb*) ;
 int musb_readb (int ,int ) ;
 void* musb_readw (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t jz4740_musb_interrupt(int irq, void *__hci)
{
 unsigned long flags;
 irqreturn_t retval = IRQ_NONE;
 struct musb *musb = __hci;

 spin_lock_irqsave(&musb->lock, flags);

 musb->int_usb = musb_readb(musb->mregs, MUSB_INTRUSB);
 musb->int_tx = musb_readw(musb->mregs, MUSB_INTRTX);
 musb->int_rx = musb_readw(musb->mregs, MUSB_INTRRX);






 musb->int_usb &= MUSB_INTR_SUSPEND | MUSB_INTR_RESUME |
     MUSB_INTR_RESET | MUSB_INTR_SOF;

 if (musb->int_usb || musb->int_tx || musb->int_rx)
  retval = musb_interrupt(musb);

 spin_unlock_irqrestore(&musb->lock, flags);

 return retval;
}
