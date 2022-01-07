
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idle_inject_thread {int should_run; } ;


 int idle_inject_thread ;
 struct idle_inject_thread* per_cpu_ptr (int *,unsigned int) ;

__attribute__((used)) static int idle_inject_should_run(unsigned int cpu)
{
 struct idle_inject_thread *iit =
  per_cpu_ptr(&idle_inject_thread, cpu);

 return iit->should_run;
}
