
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_perf_event {int event_base; int prev_count; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int GET_EVENTID (struct perf_event*) ;
 int local64_set (int *,int ) ;
 int reg_writel (int,int ) ;

__attribute__((used)) static void uncore_start_event_l3c(struct perf_event *event, int flags)
{
 u32 val;
 struct hw_perf_event *hwc = &event->hw;


 val = GET_EVENTID(event) << 3;
 reg_writel(val, hwc->config_base);
 local64_set(&hwc->prev_count, 0);
 reg_writel(0, hwc->event_base);
}
