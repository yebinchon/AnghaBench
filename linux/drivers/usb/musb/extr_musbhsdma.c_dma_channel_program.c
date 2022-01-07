
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct musb_dma_controller {struct musb* private_data; } ;
struct musb_dma_channel {int start_addr; int max_packet_sz; int len; scalar_t__ transmit; int epnum; struct musb_dma_controller* controller; } ;
struct musb {scalar_t__ hwvers; } ;
struct dma_channel {scalar_t__ status; scalar_t__ actual_len; struct musb_dma_channel* private_data; } ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 scalar_t__ MUSB_DMA_STATUS_BUSY ;
 scalar_t__ MUSB_DMA_STATUS_UNKNOWN ;
 scalar_t__ MUSB_HWVERS_1800 ;
 int configure_channel (struct dma_channel*,int ,int ,int,int ) ;
 int musb_dbg (struct musb*,char*,int ,char*,int ,int*,int ,int ) ;

__attribute__((used)) static int dma_channel_program(struct dma_channel *channel,
    u16 packet_sz, u8 mode,
    dma_addr_t dma_addr, u32 len)
{
 struct musb_dma_channel *musb_channel = channel->private_data;
 struct musb_dma_controller *controller = musb_channel->controller;
 struct musb *musb = controller->private_data;

 musb_dbg(musb, "ep%d-%s pkt_sz %d, dma_addr %pad length %d, mode %d",
  musb_channel->epnum,
  musb_channel->transmit ? "Tx" : "Rx",
  packet_sz, &dma_addr, len, mode);

 BUG_ON(channel->status == MUSB_DMA_STATUS_UNKNOWN ||
  channel->status == MUSB_DMA_STATUS_BUSY);
 if ((musb->hwvers >= MUSB_HWVERS_1800) && (dma_addr % 4))
  return 0;

 channel->actual_len = 0;
 musb_channel->start_addr = dma_addr;
 musb_channel->len = len;
 musb_channel->max_packet_sz = packet_sz;
 channel->status = MUSB_DMA_STATUS_BUSY;

 configure_channel(channel, packet_sz, mode, dma_addr, len);

 return 1;
}
