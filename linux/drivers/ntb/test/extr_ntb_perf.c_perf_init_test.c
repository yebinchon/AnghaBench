
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_thread {int dma_sync; int src; int tidx; int dma_chan; struct perf_ctx* perf; } ;
struct perf_ctx {int twait; int tsync; TYPE_2__* ntb; TYPE_1__* test_peer; } ;
typedef int dma_cap_mask_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int outbuf_size; } ;


 int DMA_MEMCPY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,int ) ;
 int dev_to_node (int *) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_request_channel (int ,int ,struct perf_ctx*) ;
 int get_random_bytes (int ,int ) ;
 int kfree (int ) ;
 int kmalloc_node (int ,int ,int ) ;
 int perf_dma_filter ;
 int use_dma ;
 int wake_up (int *) ;

__attribute__((used)) static int perf_init_test(struct perf_thread *pthr)
{
 struct perf_ctx *perf = pthr->perf;
 dma_cap_mask_t dma_mask;

 pthr->src = kmalloc_node(perf->test_peer->outbuf_size, GFP_KERNEL,
     dev_to_node(&perf->ntb->dev));
 if (!pthr->src)
  return -ENOMEM;

 get_random_bytes(pthr->src, perf->test_peer->outbuf_size);

 if (!use_dma)
  return 0;

 dma_cap_zero(dma_mask);
 dma_cap_set(DMA_MEMCPY, dma_mask);
 pthr->dma_chan = dma_request_channel(dma_mask, perf_dma_filter, perf);
 if (!pthr->dma_chan) {
  dev_err(&perf->ntb->dev, "%d: Failed to get DMA channel\n",
   pthr->tidx);
  atomic_dec(&perf->tsync);
  wake_up(&perf->twait);
  kfree(pthr->src);
  return -ENODEV;
 }

 atomic_set(&pthr->dma_sync, 0);

 return 0;
}
