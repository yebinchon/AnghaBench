
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int xgene_perf_event_update (struct perf_event*) ;

__attribute__((used)) static void xgene_perf_read(struct perf_event *event)
{
 xgene_perf_event_update(event);
}
