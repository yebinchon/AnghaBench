
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread {int dma_wait; int dma_sync; } ;


 int atomic_dec (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void perf_dma_copy_callback(void *data)
{
 struct perf_thread *pthr = data;

 atomic_dec(&pthr->dma_sync);
 wake_up(&pthr->dma_wait);
}
