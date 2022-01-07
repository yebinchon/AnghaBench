
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct musb {int ctrl_base; } ;
struct TYPE_2__ {struct musb* musb; } ;
struct cppi41_dma_controller {scalar_t__ tx_mode; scalar_t__ rx_mode; TYPE_1__ controller; } ;
struct cppi41_dma_channel {scalar_t__ port_num; scalar_t__ is_tx; struct cppi41_dma_controller* controller; } ;


 int USB_CTRL_RX_MODE ;
 int USB_CTRL_TX_MODE ;
 int musb_writel (int ,int ,scalar_t__) ;
 scalar_t__ update_ep_mode (scalar_t__,unsigned int,scalar_t__) ;

__attribute__((used)) static void cppi41_set_dma_mode(struct cppi41_dma_channel *cppi41_channel,
  unsigned mode)
{
 struct cppi41_dma_controller *controller = cppi41_channel->controller;
 struct musb *musb = controller->controller.musb;
 u32 port;
 u32 new_mode;
 u32 old_mode;

 if (cppi41_channel->is_tx)
  old_mode = controller->tx_mode;
 else
  old_mode = controller->rx_mode;
 port = cppi41_channel->port_num;
 new_mode = update_ep_mode(port, mode, old_mode);

 if (new_mode == old_mode)
  return;
 if (cppi41_channel->is_tx) {
  controller->tx_mode = new_mode;
  musb_writel(musb->ctrl_base, USB_CTRL_TX_MODE, new_mode);
 } else {
  controller->rx_mode = new_mode;
  musb_writel(musb->ctrl_base, USB_CTRL_RX_MODE, new_mode);
 }
}
