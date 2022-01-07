
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread {int duration; int copied; int tidx; int dma_sync; int dma_wait; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; int tsync; } ;
struct TYPE_2__ {int dev; } ;


 int EINTR ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int div64_u64 (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int use_dma ;
 int wait_event (int ,int) ;

__attribute__((used)) static int perf_sync_test(struct perf_thread *pthr)
{
 struct perf_ctx *perf = pthr->perf;

 if (!use_dma)
  goto no_dma_ret;

 wait_event(pthr->dma_wait,
     (atomic_read(&pthr->dma_sync) == 0 ||
      atomic_read(&perf->tsync) < 0));

 if (atomic_read(&perf->tsync) < 0)
  return -EINTR;

no_dma_ret:
 pthr->duration = ktime_sub(ktime_get(), pthr->duration);

 dev_dbg(&perf->ntb->dev, "%d: copied %llu bytes\n",
  pthr->tidx, pthr->copied);

 dev_dbg(&perf->ntb->dev, "%d: lasted %llu usecs\n",
  pthr->tidx, ktime_to_us(pthr->duration));

 dev_dbg(&perf->ntb->dev, "%d: %llu MBytes/s\n", pthr->tidx,
  div64_u64(pthr->copied, ktime_to_us(pthr->duration)));

 return 0;
}
