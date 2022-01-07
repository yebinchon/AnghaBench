
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct l3cache_event_ops {int (* update ) (struct perf_event*) ;} ;


 struct l3cache_event_ops* l3cache_event_get_ops (struct perf_event*) ;
 int stub1 (struct perf_event*) ;

__attribute__((used)) static void qcom_l3_cache__event_read(struct perf_event *event)
{
 const struct l3cache_event_ops *ops = l3cache_event_get_ops(event);

 ops->update(event);
}
