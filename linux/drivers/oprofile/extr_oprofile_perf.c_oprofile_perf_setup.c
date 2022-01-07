
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int op_perf_setup () ;
 int oprofilefs_lock ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int oprofile_perf_setup(void)
{
 raw_spin_lock(&oprofilefs_lock);
 op_perf_setup();
 raw_spin_unlock(&oprofilefs_lock);
 return 0;
}
