
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_attr {int dummy; } ;
struct perf_event {struct perf_event_attr attr; } ;


 int ATTR_CFG_GET_FLD (struct perf_event_attr*,int ) ;
 int SYS_PMSLATFR_EL1_MINLAT_SHIFT ;
 int min_latency ;

__attribute__((used)) static u64 arm_spe_event_to_pmslatfr(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 return ATTR_CFG_GET_FLD(attr, min_latency)
        << SYS_PMSLATFR_EL1_MINLAT_SHIFT;
}
