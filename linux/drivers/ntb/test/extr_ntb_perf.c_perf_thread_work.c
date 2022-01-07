
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct perf_thread {int status; } ;


 int perf_clear_test (struct perf_thread*) ;
 int perf_init_test (struct perf_thread*) ;
 int perf_run_test (struct perf_thread*) ;
 int perf_sync_test (struct perf_thread*) ;
 struct perf_thread* to_thread_work (struct work_struct*) ;

__attribute__((used)) static void perf_thread_work(struct work_struct *work)
{
 struct perf_thread *pthr = to_thread_work(work);
 int ret;
 ret = perf_init_test(pthr);
 if (ret) {
  pthr->status = ret;
  return;
 }

 ret = perf_run_test(pthr);
 if (ret) {
  pthr->status = ret;
  goto err_clear_test;
 }

 pthr->status = perf_sync_test(pthr);

err_clear_test:
 perf_clear_test(pthr);
}
