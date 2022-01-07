
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idle_inject_thread {scalar_t__ should_run; } ;
struct idle_inject_device {int idle_duration_us; } ;


 int READ_ONCE (int ) ;
 int idle_inject_device ;
 int idle_inject_thread ;
 struct idle_inject_device* per_cpu (int ,unsigned int) ;
 struct idle_inject_thread* per_cpu_ptr (int *,unsigned int) ;
 int play_idle (int ) ;

__attribute__((used)) static void idle_inject_fn(unsigned int cpu)
{
 struct idle_inject_device *ii_dev;
 struct idle_inject_thread *iit;

 ii_dev = per_cpu(idle_inject_device, cpu);
 iit = per_cpu_ptr(&idle_inject_thread, cpu);




 iit->should_run = 0;

 play_idle(READ_ONCE(ii_dev->idle_duration_us));
}
