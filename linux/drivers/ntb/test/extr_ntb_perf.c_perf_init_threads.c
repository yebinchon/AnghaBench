
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread {int tidx; int work; int dma_wait; int status; struct perf_ctx* perf; } ;
struct perf_ctx {struct perf_thread* threads; int twait; int * peers; int * test_peer; int tcnt; } ;


 int DEF_THREADS_CNT ;
 int ENODATA ;
 int INIT_WORK (int *,int ) ;
 int MAX_THREADS_CNT ;
 int init_waitqueue_head (int *) ;
 int perf_thread_work ;

__attribute__((used)) static void perf_init_threads(struct perf_ctx *perf)
{
 struct perf_thread *pthr;
 int tidx;

 perf->tcnt = DEF_THREADS_CNT;
 perf->test_peer = &perf->peers[0];
 init_waitqueue_head(&perf->twait);

 for (tidx = 0; tidx < MAX_THREADS_CNT; tidx++) {
  pthr = &perf->threads[tidx];

  pthr->perf = perf;
  pthr->tidx = tidx;
  pthr->status = -ENODATA;
  init_waitqueue_head(&pthr->dma_wait);
  INIT_WORK(&pthr->work, perf_thread_work);
 }
}
