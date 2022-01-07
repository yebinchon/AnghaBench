
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 scalar_t__ ddr_perf_filter_val (struct perf_event*) ;
 int ddr_perf_is_filtered (struct perf_event*) ;

__attribute__((used)) static bool ddr_perf_filters_compatible(struct perf_event *a,
     struct perf_event *b)
{
 if (!ddr_perf_is_filtered(a))
  return 1;
 if (!ddr_perf_is_filtered(b))
  return 1;
 return ddr_perf_filter_val(a) == ddr_perf_filter_val(b);
}
