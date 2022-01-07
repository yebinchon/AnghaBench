
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ux500_dma_channel {scalar_t__ is_allocated; int ch_num; TYPE_1__* controller; } ;
struct musb {int controller; } ;
struct dma_channel {scalar_t__ actual_len; int status; struct ux500_dma_channel* private_data; } ;
struct TYPE_2__ {struct musb* private_data; } ;


 int MUSB_DMA_STATUS_FREE ;
 int dev_dbg (int ,char*,int ) ;

__attribute__((used)) static void ux500_dma_channel_release(struct dma_channel *channel)
{
 struct ux500_dma_channel *ux500_channel = channel->private_data;
 struct musb *musb = ux500_channel->controller->private_data;

 dev_dbg(musb->controller, "channel=%d\n", ux500_channel->ch_num);

 if (ux500_channel->is_allocated) {
  ux500_channel->is_allocated = 0;
  channel->status = MUSB_DMA_STATUS_FREE;
  channel->actual_len = 0;
 }
}
