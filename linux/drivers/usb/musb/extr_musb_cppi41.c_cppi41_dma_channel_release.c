
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {scalar_t__ actual_len; int status; struct cppi41_dma_channel* private_data; } ;
struct cppi41_dma_channel {scalar_t__ is_allocated; } ;


 int MUSB_DMA_STATUS_FREE ;
 int trace_musb_cppi41_free (struct cppi41_dma_channel*) ;

__attribute__((used)) static void cppi41_dma_channel_release(struct dma_channel *channel)
{
 struct cppi41_dma_channel *cppi41_channel = channel->private_data;

 trace_musb_cppi41_free(cppi41_channel);
 if (cppi41_channel->is_allocated) {
  cppi41_channel->is_allocated = 0;
  channel->status = MUSB_DMA_STATUS_FREE;
  channel->actual_len = 0;
 }
}
