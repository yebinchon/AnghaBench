
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi721_bdma_chan {int active; int tx_desc; int free_list; int tasklet; int bd_base; int id; } ;
struct dma_chan {TYPE_1__* dev; } ;
struct TYPE_2__ {int device; } ;


 int DMA ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (int ) ;
 int tasklet_kill (int *) ;
 struct tsi721_bdma_chan* to_tsi721_chan (struct dma_chan*) ;
 int tsi721_bdma_ch_free (struct tsi721_bdma_chan*) ;
 int tsi721_bdma_interrupt_enable (struct tsi721_bdma_chan*,int ) ;
 int tsi721_sync_dma_irq (struct tsi721_bdma_chan*) ;
 int tsi_debug (int ,int *,char*,int ) ;

__attribute__((used)) static void tsi721_free_chan_resources(struct dma_chan *dchan)
{
 struct tsi721_bdma_chan *bdma_chan = to_tsi721_chan(dchan);

 tsi_debug(DMA, &dchan->dev->device, "DMAC%d", bdma_chan->id);

 if (!bdma_chan->bd_base)
  return;

 tsi721_bdma_interrupt_enable(bdma_chan, 0);
 bdma_chan->active = 0;
 tsi721_sync_dma_irq(bdma_chan);
 tasklet_kill(&bdma_chan->tasklet);
 INIT_LIST_HEAD(&bdma_chan->free_list);
 kfree(bdma_chan->tx_desc);
 tsi721_bdma_ch_free(bdma_chan);
}
