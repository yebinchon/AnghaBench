
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_ctx {TYPE_1__* threads; int twait; int tsync; } ;
struct TYPE_2__ {int work; int dma_wait; } ;


 int MAX_THREADS_CNT ;
 int atomic_set (int *,int) ;
 int cancel_work_sync (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void perf_terminate_test(struct perf_ctx *perf)
{
 int tidx;

 atomic_set(&perf->tsync, -1);
 wake_up(&perf->twait);

 for (tidx = 0; tidx < MAX_THREADS_CNT; tidx++) {
  wake_up(&perf->threads[tidx].dma_wait);
  cancel_work_sync(&perf->threads[tidx].work);
 }
}
