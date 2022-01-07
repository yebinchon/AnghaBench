
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_bdma_chan {int lock; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tsi721_bdma_chan* to_tsi721_chan (struct dma_chan*) ;

__attribute__((used)) static
enum dma_status tsi721_tx_status(struct dma_chan *dchan, dma_cookie_t cookie,
     struct dma_tx_state *txstate)
{
 struct tsi721_bdma_chan *bdma_chan = to_tsi721_chan(dchan);
 enum dma_status status;

 spin_lock_bh(&bdma_chan->lock);
 status = dma_cookie_status(dchan, cookie, txstate);
 spin_unlock_bh(&bdma_chan->lock);
 return status;
}
