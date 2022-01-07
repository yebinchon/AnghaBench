
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int op_perf_stop () ;
 scalar_t__ oprofile_perf_enabled ;
 int oprofile_perf_mutex ;

__attribute__((used)) static void oprofile_perf_stop(void)
{
 mutex_lock(&oprofile_perf_mutex);
 if (oprofile_perf_enabled)
  op_perf_stop();
 oprofile_perf_enabled = 0;
 mutex_unlock(&oprofile_perf_mutex);
}
