
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct perf_ctx {int busy_flag; scalar_t__ tcnt; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MAX_THREADS_CNT ;
 int clear_bit_unlock (int ,int *) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static int perf_set_tcnt(struct perf_ctx *perf, u8 tcnt)
{
 if (tcnt == 0 || tcnt > MAX_THREADS_CNT)
  return -EINVAL;

 if (test_and_set_bit_lock(0, &perf->busy_flag))
  return -EBUSY;

 perf->tcnt = tcnt;

 clear_bit_unlock(0, &perf->busy_flag);

 return 0;
}
