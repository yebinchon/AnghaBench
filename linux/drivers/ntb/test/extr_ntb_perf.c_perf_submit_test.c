
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread {int work; int duration; scalar_t__ copied; int status; } ;
struct perf_peer {int sts; struct perf_ctx* perf; } ;
struct perf_ctx {int tcnt; int busy_flag; int tsync; int twait; struct perf_thread* threads; struct perf_peer* test_peer; } ;


 int EBUSY ;
 int EINTR ;
 int ENODATA ;
 int ENOLINK ;
 int ERESTARTSYS ;
 int MAX_THREADS_CNT ;
 int PERF_STS_DONE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int clear_bit_unlock (int ,int *) ;
 int ktime_set (int ,int ) ;
 int perf_terminate_test (struct perf_ctx*) ;
 int perf_wq ;
 int queue_work (int ,int *) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int perf_submit_test(struct perf_peer *peer)
{
 struct perf_ctx *perf = peer->perf;
 struct perf_thread *pthr;
 int tidx, ret;

 if (!test_bit(PERF_STS_DONE, &peer->sts))
  return -ENOLINK;

 if (test_and_set_bit_lock(0, &perf->busy_flag))
  return -EBUSY;

 perf->test_peer = peer;
 atomic_set(&perf->tsync, perf->tcnt);

 for (tidx = 0; tidx < MAX_THREADS_CNT; tidx++) {
  pthr = &perf->threads[tidx];

  pthr->status = -ENODATA;
  pthr->copied = 0;
  pthr->duration = ktime_set(0, 0);
  if (tidx < perf->tcnt)
   (void)queue_work(perf_wq, &pthr->work);
 }

 ret = wait_event_interruptible(perf->twait,
           atomic_read(&perf->tsync) <= 0);
 if (ret == -ERESTARTSYS) {
  perf_terminate_test(perf);
  ret = -EINTR;
 }

 clear_bit_unlock(0, &perf->busy_flag);

 return ret;
}
