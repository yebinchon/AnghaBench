
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dma_channel {scalar_t__ status; scalar_t__ actual_len; } ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 scalar_t__ MUSB_DMA_STATUS_BUSY ;
 scalar_t__ MUSB_DMA_STATUS_FREE ;
 scalar_t__ MUSB_DMA_STATUS_UNKNOWN ;
 int ux500_configure_channel (struct dma_channel*,int ,int ,int ,int ) ;

__attribute__((used)) static int ux500_dma_channel_program(struct dma_channel *channel,
    u16 packet_sz, u8 mode,
    dma_addr_t dma_addr, u32 len)
{
 int ret;

 BUG_ON(channel->status == MUSB_DMA_STATUS_UNKNOWN ||
  channel->status == MUSB_DMA_STATUS_BUSY);

 channel->status = MUSB_DMA_STATUS_BUSY;
 channel->actual_len = 0;
 ret = ux500_configure_channel(channel, packet_sz, mode, dma_addr, len);
 if (!ret)
  channel->status = MUSB_DMA_STATUS_FREE;

 return ret;
}
