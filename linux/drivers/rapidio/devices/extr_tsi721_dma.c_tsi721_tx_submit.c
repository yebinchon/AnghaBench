
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsi721_tx_desc {int desc_node; int status; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct tsi721_bdma_chan {int lock; int queue; int active; int id; TYPE_2__ dchan; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;
struct TYPE_3__ {int device; } ;


 int DMA_IN_PROGRESS ;
 int EIO ;
 int ENODEV ;
 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tsi721_bdma_chan* to_tsi721_chan (int ) ;
 struct tsi721_tx_desc* to_tsi721_desc (struct dma_async_tx_descriptor*) ;
 int tsi721_advance_work (struct tsi721_bdma_chan*,int *) ;
 int tsi_err (int *,char*,int ,struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t tsi721_tx_submit(struct dma_async_tx_descriptor *txd)
{
 struct tsi721_tx_desc *desc = to_tsi721_desc(txd);
 struct tsi721_bdma_chan *bdma_chan = to_tsi721_chan(txd->chan);
 dma_cookie_t cookie;


 if (!list_empty(&desc->desc_node)) {
  tsi_err(&bdma_chan->dchan.dev->device,
   "DMAC%d wrong state of descriptor %p",
   bdma_chan->id, txd);
  return -EIO;
 }

 spin_lock_bh(&bdma_chan->lock);

 if (!bdma_chan->active) {
  spin_unlock_bh(&bdma_chan->lock);
  return -ENODEV;
 }

 cookie = dma_cookie_assign(txd);
 desc->status = DMA_IN_PROGRESS;
 list_add_tail(&desc->desc_node, &bdma_chan->queue);
 tsi721_advance_work(bdma_chan, ((void*)0));

 spin_unlock_bh(&bdma_chan->lock);
 return cookie;
}
