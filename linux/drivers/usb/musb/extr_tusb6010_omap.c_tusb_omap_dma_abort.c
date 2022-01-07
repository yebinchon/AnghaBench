
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tusb_omap_dma_ch {TYPE_1__* dma_data; } ;
struct dma_channel {int status; } ;
struct TYPE_2__ {int chan; } ;


 int MUSB_DMA_STATUS_FREE ;
 int dmaengine_terminate_all (int ) ;
 struct tusb_omap_dma_ch* to_chdat (struct dma_channel*) ;

__attribute__((used)) static int tusb_omap_dma_abort(struct dma_channel *channel)
{
 struct tusb_omap_dma_ch *chdat = to_chdat(channel);

 if (chdat->dma_data)
  dmaengine_terminate_all(chdat->dma_data->chan);

 channel->status = MUSB_DMA_STATUS_FREE;

 return 0;
}
