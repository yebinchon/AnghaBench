
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {void* callback_param; int (* callback ) (void*) ;} ;
struct tsi721_tx_desc {int desc_node; struct dma_async_tx_descriptor txd; } ;
struct tsi721_bdma_chan {int free_list; } ;
typedef int (* dma_async_tx_callback ) (void*) ;


 int list_move (int *,int *) ;

__attribute__((used)) static void tsi721_dma_tx_err(struct tsi721_bdma_chan *bdma_chan,
         struct tsi721_tx_desc *desc)
{
 struct dma_async_tx_descriptor *txd = &desc->txd;
 dma_async_tx_callback callback = txd->callback;
 void *param = txd->callback_param;

 list_move(&desc->desc_node, &bdma_chan->free_list);

 if (callback)
  callback(param);
}
