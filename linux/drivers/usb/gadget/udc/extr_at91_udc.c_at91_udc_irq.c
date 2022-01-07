
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int speed; } ;
struct at91_udc {int suspended; int lock; struct at91_ep* ep; TYPE_2__ gadget; TYPE_1__* driver; scalar_t__ addr; int clocked; } ;
struct at91_ep {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* resume ) (TYPE_2__*) ;int (* suspend ) (TYPE_2__*) ;} ;


 int AT91_UDP_CSR (int ) ;
 int AT91_UDP_ENDBUSRES ;
 int AT91_UDP_EP (int ) ;
 int AT91_UDP_EPEDS ;
 int AT91_UDP_EPTYPE_CTRL ;
 int AT91_UDP_ICR ;
 int AT91_UDP_IDR ;
 int AT91_UDP_IER ;
 int AT91_UDP_IMR ;
 int AT91_UDP_ISR ;
 int AT91_UDP_RXRSM ;
 int AT91_UDP_RXSUSP ;
 int IRQ_HANDLED ;
 int MINIMUS_INTERRUPTUS ;
 int NUM_ENDPOINTS ;
 int USB_SPEED_FULL ;
 int VDBG (char*) ;
 int at91_udp_read (struct at91_udc*,int ) ;
 int at91_udp_write (struct at91_udc*,int ,int) ;
 int clk_off (struct at91_udc*) ;
 int clk_on (struct at91_udc*) ;
 int handle_ep (struct at91_ep*) ;
 int handle_ep0 (struct at91_udc*) ;
 int reset_gadget (struct at91_udc*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t at91_udc_irq (int irq, void *_udc)
{
 struct at91_udc *udc = _udc;
 u32 rescans = 5;
 int disable_clock = 0;
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);

 if (!udc->clocked) {
  clk_on(udc);
  disable_clock = 1;
 }

 while (rescans--) {
  u32 status;

  status = at91_udp_read(udc, AT91_UDP_ISR)
   & at91_udp_read(udc, AT91_UDP_IMR);
  if (!status)
   break;


  if (status & AT91_UDP_ENDBUSRES) {
   at91_udp_write(udc, AT91_UDP_IDR, ~MINIMUS_INTERRUPTUS);
   at91_udp_write(udc, AT91_UDP_IER, MINIMUS_INTERRUPTUS);

   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_ENDBUSRES);
   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_ENDBUSRES);
   VDBG("end bus reset\n");
   udc->addr = 0;
   reset_gadget(udc);


   at91_udp_write(udc, AT91_UDP_CSR(0),
     AT91_UDP_EPEDS | AT91_UDP_EPTYPE_CTRL);
   udc->gadget.speed = USB_SPEED_FULL;
   udc->suspended = 0;
   at91_udp_write(udc, AT91_UDP_IER, AT91_UDP_EP(0));
  } else if (status & AT91_UDP_RXSUSP) {
   at91_udp_write(udc, AT91_UDP_IDR, AT91_UDP_RXSUSP);
   at91_udp_write(udc, AT91_UDP_IER, AT91_UDP_RXRSM);
   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_RXSUSP);

   if (udc->suspended)
    continue;
   udc->suspended = 1;







   if (udc->driver && udc->driver->suspend) {
    spin_unlock(&udc->lock);
    udc->driver->suspend(&udc->gadget);
    spin_lock(&udc->lock);
   }


  } else if (status & AT91_UDP_RXRSM) {
   at91_udp_write(udc, AT91_UDP_IDR, AT91_UDP_RXRSM);
   at91_udp_write(udc, AT91_UDP_IER, AT91_UDP_RXSUSP);
   at91_udp_write(udc, AT91_UDP_ICR, AT91_UDP_RXRSM);

   if (!udc->suspended)
    continue;
   udc->suspended = 0;






   if (udc->driver && udc->driver->resume) {
    spin_unlock(&udc->lock);
    udc->driver->resume(&udc->gadget);
    spin_lock(&udc->lock);
   }


  } else {
   int i;
   unsigned mask = 1;
   struct at91_ep *ep = &udc->ep[1];

   if (status & mask)
    handle_ep0(udc);
   for (i = 1; i < NUM_ENDPOINTS; i++) {
    mask <<= 1;
    if (status & mask)
     handle_ep(ep);
    ep++;
   }
  }
 }

 if (disable_clock)
  clk_off(udc);

 spin_unlock_irqrestore(&udc->lock, flags);

 return IRQ_HANDLED;
}
