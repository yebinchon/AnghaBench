
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {int dummy; } ;


 int num_counters ;
 int oprofile_add_sample (struct pt_regs*,int) ;
 struct perf_event** per_cpu (int ,int ) ;
 int perf_events ;
 int pr_warning (char*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void op_overflow_handler(struct perf_event *event,
   struct perf_sample_data *data, struct pt_regs *regs)
{
 int id;
 u32 cpu = smp_processor_id();

 for (id = 0; id < num_counters; ++id)
  if (per_cpu(perf_events, cpu)[id] == event)
   break;

 if (id != num_counters)
  oprofile_add_sample(regs, id);
 else
  pr_warning("oprofile: ignoring spurious overflow "
    "on cpu %u\n", cpu);
}
