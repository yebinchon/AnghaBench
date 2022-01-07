
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {scalar_t__ state; } ;
struct TYPE_2__ {int attr; int enabled; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (struct perf_event*) ;
 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 int PTR_ERR (struct perf_event*) ;
 TYPE_1__* counter_config ;
 int op_overflow_handler ;
 struct perf_event** per_cpu (int ,int) ;
 struct perf_event* perf_event_create_kernel_counter (int *,int,int *,int ,int *) ;
 int perf_event_release_kernel (struct perf_event*) ;
 int perf_events ;
 int pr_warning (char*,int,int) ;

__attribute__((used)) static int op_create_counter(int cpu, int event)
{
 struct perf_event *pevent;

 if (!counter_config[event].enabled || per_cpu(perf_events, cpu)[event])
  return 0;

 pevent = perf_event_create_kernel_counter(&counter_config[event].attr,
        cpu, ((void*)0),
        op_overflow_handler, ((void*)0));

 if (IS_ERR(pevent))
  return PTR_ERR(pevent);

 if (pevent->state != PERF_EVENT_STATE_ACTIVE) {
  perf_event_release_kernel(pevent);
  pr_warning("oprofile: failed to enable event %d "
    "on CPU %d\n", event, cpu);
  return -EBUSY;
 }

 per_cpu(perf_events, cpu)[event] = pevent;

 return 0;
}
