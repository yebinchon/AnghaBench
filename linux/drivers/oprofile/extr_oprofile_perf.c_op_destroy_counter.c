
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 struct perf_event** per_cpu (int ,int) ;
 int perf_event_release_kernel (struct perf_event*) ;
 int perf_events ;

__attribute__((used)) static void op_destroy_counter(int cpu, int event)
{
 struct perf_event *pevent = per_cpu(perf_events, cpu)[event];

 if (pevent) {
  perf_event_release_kernel(pevent);
  per_cpu(perf_events, cpu)[event] = ((void*)0);
 }
}
