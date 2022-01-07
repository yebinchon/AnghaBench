
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int MAX_USER_RT_PRIO ;
 int SCHED_FIFO ;
 int current ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;

__attribute__((used)) static void idle_inject_setup(unsigned int cpu)
{
 struct sched_param param = { .sched_priority = MAX_USER_RT_PRIO / 2 };

 sched_setscheduler(current, SCHED_FIFO, &param);
}
