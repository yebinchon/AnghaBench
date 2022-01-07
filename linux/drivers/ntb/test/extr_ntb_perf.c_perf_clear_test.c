
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread {int src; int dma_chan; struct perf_ctx* perf; } ;
struct perf_ctx {int twait; int tsync; } ;


 int atomic_dec (int *) ;
 int dma_release_channel (int ) ;
 int dmaengine_terminate_sync (int ) ;
 int kfree (int ) ;
 int use_dma ;
 int wake_up (int *) ;

__attribute__((used)) static void perf_clear_test(struct perf_thread *pthr)
{
 struct perf_ctx *perf = pthr->perf;

 if (!use_dma)
  goto no_dma_notify;





 (void)dmaengine_terminate_sync(pthr->dma_chan);

 dma_release_channel(pthr->dma_chan);

no_dma_notify:
 atomic_dec(&perf->tsync);
 wake_up(&perf->twait);
 kfree(pthr->src);
}
