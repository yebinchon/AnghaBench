
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct musb {int ctrl_base; } ;
struct TYPE_2__ {struct musb* musb; } ;
struct cppi41_dma_controller {int tx_mode; TYPE_1__ controller; } ;
struct cppi41_dma_channel {int port_num; int is_tx; struct cppi41_dma_controller* controller; } ;


 int DA8XX_USB_MODE ;
 int musb_writel (int ,int ,int) ;

__attribute__((used)) static void da8xx_set_dma_mode(struct cppi41_dma_channel *cppi41_channel,
  unsigned int mode)
{
 struct cppi41_dma_controller *controller = cppi41_channel->controller;
 struct musb *musb = controller->controller.musb;
 unsigned int shift;
 u32 port;
 u32 new_mode;
 u32 old_mode;

 old_mode = controller->tx_mode;
 port = cppi41_channel->port_num;

 shift = (port - 1) * 4;
 if (!cppi41_channel->is_tx)
  shift += 16;
 new_mode = old_mode & ~(3 << shift);
 new_mode |= mode << shift;

 if (new_mode == old_mode)
  return;
 controller->tx_mode = new_mode;
 musb_writel(musb->ctrl_base, DA8XX_USB_MODE, new_mode);
}
