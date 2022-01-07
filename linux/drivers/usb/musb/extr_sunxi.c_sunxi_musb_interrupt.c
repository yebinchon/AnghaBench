
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int int_usb; int lock; scalar_t__ mregs; void* int_rx; void* int_tx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MUSB_FADDR ;
 int MUSB_INTR_RESET ;
 scalar_t__ SUNXI_MUSB_INTRRX ;
 scalar_t__ SUNXI_MUSB_INTRTX ;
 scalar_t__ SUNXI_MUSB_INTRUSB ;
 int is_host_active (struct musb*) ;
 int musb_ep_select (scalar_t__,int ) ;
 int musb_interrupt (struct musb*) ;
 int musb_writeb (scalar_t__,int ,int ) ;
 int readb (scalar_t__) ;
 void* readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;
 int writew (void*,scalar_t__) ;

__attribute__((used)) static irqreturn_t sunxi_musb_interrupt(int irq, void *__hci)
{
 struct musb *musb = __hci;
 unsigned long flags;

 spin_lock_irqsave(&musb->lock, flags);

 musb->int_usb = readb(musb->mregs + SUNXI_MUSB_INTRUSB);
 if (musb->int_usb)
  writeb(musb->int_usb, musb->mregs + SUNXI_MUSB_INTRUSB);

 if ((musb->int_usb & MUSB_INTR_RESET) && !is_host_active(musb)) {

  musb_ep_select(musb->mregs, 0);
  musb_writeb(musb->mregs, MUSB_FADDR, 0);
 }

 musb->int_tx = readw(musb->mregs + SUNXI_MUSB_INTRTX);
 if (musb->int_tx)
  writew(musb->int_tx, musb->mregs + SUNXI_MUSB_INTRTX);

 musb->int_rx = readw(musb->mregs + SUNXI_MUSB_INTRRX);
 if (musb->int_rx)
  writew(musb->int_rx, musb->mregs + SUNXI_MUSB_INTRRX);

 musb_interrupt(musb);

 spin_unlock_irqrestore(&musb->lock, flags);

 return IRQ_HANDLED;
}
