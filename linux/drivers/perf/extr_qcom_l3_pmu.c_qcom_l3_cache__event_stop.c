
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct l3cache_event_ops {int (* update ) (struct perf_event*) ;int (* stop ) (struct perf_event*,int) ;} ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 struct l3cache_event_ops* l3cache_event_get_ops (struct perf_event*) ;
 int stub1 (struct perf_event*,int) ;
 int stub2 (struct perf_event*) ;

__attribute__((used)) static void qcom_l3_cache__event_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 const struct l3cache_event_ops *ops = l3cache_event_get_ops(event);

 if (hwc->state & PERF_HES_STOPPED)
  return;

 ops->stop(event, flags);
 if (flags & PERF_EF_UPDATE)
  ops->update(event);
 hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
}
