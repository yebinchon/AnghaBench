
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct musb_hw_ep {int regs; scalar_t__ epnum; } ;


 int MUSB_CSR0 ;
 int MUSB_CSR0_H_SETUPPKT ;
 int MUSB_CSR0_TXPKTRDY ;
 int MUSB_TXCSR ;
 int MUSB_TXCSR_H_WZC_BITS ;
 int MUSB_TXCSR_TXPKTRDY ;
 int musb_readw (int ,int ) ;
 int musb_writew (int ,int ,int) ;

__attribute__((used)) static inline void musb_h_tx_start(struct musb_hw_ep *ep)
{
 u16 txcsr;


 if (ep->epnum) {
  txcsr = musb_readw(ep->regs, MUSB_TXCSR);
  txcsr |= MUSB_TXCSR_TXPKTRDY | MUSB_TXCSR_H_WZC_BITS;
  musb_writew(ep->regs, MUSB_TXCSR, txcsr);
 } else {
  txcsr = MUSB_CSR0_H_SETUPPKT | MUSB_CSR0_TXPKTRDY;
  musb_writew(ep->regs, MUSB_CSR0, txcsr);
 }

}
