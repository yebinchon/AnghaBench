
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {scalar_t__ state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct l3cache_event_ops {int (* start ) (struct perf_event*) ;} ;


 struct l3cache_event_ops* l3cache_event_get_ops (struct perf_event*) ;
 int stub1 (struct perf_event*) ;

__attribute__((used)) static void qcom_l3_cache__event_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 const struct l3cache_event_ops *ops = l3cache_event_get_ops(event);

 hwc->state = 0;
 ops->start(event);
}
