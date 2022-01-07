
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 scalar_t__ event_uses_long_counter (struct perf_event*) ;

__attribute__((used)) static inline int event_num_counters(struct perf_event *event)
{
 return event_uses_long_counter(event) ? 2 : 1;
}
