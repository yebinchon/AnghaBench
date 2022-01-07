
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_attr {int dummy; } ;
struct perf_event {struct perf_event_attr attr; } ;


 int ATTR_CFG_GET_FLD (struct perf_event_attr*,int ) ;
 int event_filter ;

__attribute__((used)) static u64 arm_spe_event_to_pmsevfr(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 return ATTR_CFG_GET_FLD(attr, event_filter);
}
