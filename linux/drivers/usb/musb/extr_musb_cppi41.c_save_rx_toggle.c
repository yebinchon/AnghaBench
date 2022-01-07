
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct cppi41_dma_channel {int usb_toggle; TYPE_3__* hw_ep; TYPE_2__* controller; scalar_t__ is_tx; } ;
struct TYPE_6__ {int regs; } ;
struct TYPE_4__ {int musb; } ;
struct TYPE_5__ {TYPE_1__ controller; } ;


 int MUSB_RXCSR ;
 int MUSB_RXCSR_H_DATATOGGLE ;
 int is_host_active (int ) ;
 int musb_readw (int ,int ) ;

__attribute__((used)) static void save_rx_toggle(struct cppi41_dma_channel *cppi41_channel)
{
 u16 csr;
 u8 toggle;

 if (cppi41_channel->is_tx)
  return;
 if (!is_host_active(cppi41_channel->controller->controller.musb))
  return;

 csr = musb_readw(cppi41_channel->hw_ep->regs, MUSB_RXCSR);
 toggle = csr & MUSB_RXCSR_H_DATATOGGLE ? 1 : 0;

 cppi41_channel->usb_toggle = toggle;
}
