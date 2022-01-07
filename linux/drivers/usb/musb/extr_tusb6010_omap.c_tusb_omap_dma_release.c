
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tusb_omap_dma_ch {TYPE_1__* dma_data; int epnum; struct musb* musb; } ;
struct musb {int controller; } ;
struct dma_channel {int status; } ;
struct TYPE_2__ {int chan; } ;


 int MUSB_DMA_STATUS_UNKNOWN ;
 int dev_dbg (int ,char*,int ) ;
 int dmaengine_terminate_sync (int ) ;
 struct tusb_omap_dma_ch* to_chdat (struct dma_channel*) ;
 int tusb_omap_dma_free_dmareq (struct tusb_omap_dma_ch*) ;

__attribute__((used)) static void tusb_omap_dma_release(struct dma_channel *channel)
{
 struct tusb_omap_dma_ch *chdat = to_chdat(channel);
 struct musb *musb = chdat->musb;

 dev_dbg(musb->controller, "Release for ep%i\n", chdat->epnum);

 channel->status = MUSB_DMA_STATUS_UNKNOWN;

 dmaengine_terminate_sync(chdat->dma_data->chan);
 tusb_omap_dma_free_dmareq(chdat);

 channel = ((void*)0);
}
