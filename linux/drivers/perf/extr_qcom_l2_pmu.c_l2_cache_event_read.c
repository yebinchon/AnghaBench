
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int l2_cache_event_update (struct perf_event*) ;

__attribute__((used)) static void l2_cache_event_read(struct perf_event *event)
{
 l2_cache_event_update(event);
}
