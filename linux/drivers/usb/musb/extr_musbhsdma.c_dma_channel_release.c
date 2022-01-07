
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb_dma_channel {int idx; TYPE_1__* controller; scalar_t__ len; scalar_t__ start_addr; } ;
struct dma_channel {int status; scalar_t__ actual_len; struct musb_dma_channel* private_data; } ;
struct TYPE_2__ {int used_channels; } ;


 int MUSB_DMA_STATUS_UNKNOWN ;

__attribute__((used)) static void dma_channel_release(struct dma_channel *channel)
{
 struct musb_dma_channel *musb_channel = channel->private_data;

 channel->actual_len = 0;
 musb_channel->start_addr = 0;
 musb_channel->len = 0;

 musb_channel->controller->used_channels &=
  ~(1 << musb_channel->idx);

 channel->status = MUSB_DMA_STATUS_UNKNOWN;
}
