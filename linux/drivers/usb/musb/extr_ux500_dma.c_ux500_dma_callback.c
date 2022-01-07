
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int actual_len; } ;
struct ux500_dma_channel {int is_tx; TYPE_1__ channel; int cur_len; struct musb_hw_ep* hw_ep; } ;
struct musb_hw_ep {int epnum; struct musb* musb; } ;
struct musb {int lock; int controller; } ;
struct dma_channel {struct ux500_dma_channel* private_data; } ;


 int MUSB_DMA_STATUS_FREE ;
 int dev_dbg (int ,char*,int ) ;
 int musb_dma_completion (struct musb*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ux500_dma_callback(void *private_data)
{
 struct dma_channel *channel = private_data;
 struct ux500_dma_channel *ux500_channel = channel->private_data;
 struct musb_hw_ep *hw_ep = ux500_channel->hw_ep;
 struct musb *musb = hw_ep->musb;
 unsigned long flags;

 dev_dbg(musb->controller, "DMA rx transfer done on hw_ep=%d\n",
  hw_ep->epnum);

 spin_lock_irqsave(&musb->lock, flags);
 ux500_channel->channel.actual_len = ux500_channel->cur_len;
 ux500_channel->channel.status = MUSB_DMA_STATUS_FREE;
 musb_dma_completion(musb, hw_ep->epnum, ux500_channel->is_tx);
 spin_unlock_irqrestore(&musb->lock, flags);

}
