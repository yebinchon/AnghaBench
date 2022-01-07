
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __oprofile_hrtimer_start ;
 int ctr_running ;
 int get_online_cpus () ;
 int on_each_cpu (int ,int *,int) ;
 int put_online_cpus () ;

__attribute__((used)) static int oprofile_hrtimer_start(void)
{
 get_online_cpus();
 ctr_running = 1;
 on_each_cpu(__oprofile_hrtimer_start, ((void*)0), 1);
 put_online_cpus();
 return 0;
}
