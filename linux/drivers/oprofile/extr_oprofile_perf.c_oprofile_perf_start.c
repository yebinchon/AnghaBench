
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int op_perf_start () ;
 int oprofile_perf_enabled ;
 int oprofile_perf_mutex ;

__attribute__((used)) static int oprofile_perf_start(void)
{
 int ret = -EBUSY;

 mutex_lock(&oprofile_perf_mutex);
 if (!oprofile_perf_enabled) {
  ret = 0;
  op_perf_start();
  oprofile_perf_enabled = 1;
 }
 mutex_unlock(&oprofile_perf_mutex);
 return ret;
}
