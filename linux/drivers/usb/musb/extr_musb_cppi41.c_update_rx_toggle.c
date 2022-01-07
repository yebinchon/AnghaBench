
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct musb_hw_ep {int regs; int epnum; struct musb* musb; } ;
struct musb {int mregs; } ;
struct cppi41_dma_channel {int usb_toggle; struct musb_hw_ep* hw_ep; scalar_t__ is_tx; } ;


 int MUSB_RXCSR ;
 int MUSB_RXCSR_H_DATATOGGLE ;
 int MUSB_RXCSR_H_WR_DATATOGGLE ;
 int is_host_active (struct musb*) ;
 int musb_dbg (struct musb*,char*) ;
 int musb_ep_select (int ,int ) ;
 int musb_readw (int ,int ) ;
 int musb_writew (int ,int ,int) ;

__attribute__((used)) static void update_rx_toggle(struct cppi41_dma_channel *cppi41_channel)
{
 struct musb_hw_ep *hw_ep = cppi41_channel->hw_ep;
 struct musb *musb = hw_ep->musb;
 u16 csr;
 u8 toggle;

 if (cppi41_channel->is_tx)
  return;
 if (!is_host_active(musb))
  return;

 musb_ep_select(musb->mregs, hw_ep->epnum);
 csr = musb_readw(hw_ep->regs, MUSB_RXCSR);
 toggle = csr & MUSB_RXCSR_H_DATATOGGLE ? 1 : 0;






 if (!toggle && toggle == cppi41_channel->usb_toggle) {
  csr |= MUSB_RXCSR_H_DATATOGGLE | MUSB_RXCSR_H_WR_DATATOGGLE;
  musb_writew(cppi41_channel->hw_ep->regs, MUSB_RXCSR, csr);
  musb_dbg(musb, "Restoring DATA1 toggle.");
 }

 cppi41_channel->usb_toggle = toggle;
}
