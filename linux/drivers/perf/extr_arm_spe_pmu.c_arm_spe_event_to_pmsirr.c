
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event_attr {int dummy; } ;
struct TYPE_2__ {int sample_period; } ;
struct perf_event {TYPE_1__ hw; struct perf_event_attr attr; } ;


 int ATTR_CFG_GET_FLD (struct perf_event_attr*,int ) ;
 int SYS_PMSIRR_EL1_RND_SHIFT ;
 int arm_spe_event_sanitise_period (struct perf_event*) ;
 int jitter ;

__attribute__((used)) static u64 arm_spe_event_to_pmsirr(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 u64 reg = 0;

 arm_spe_event_sanitise_period(event);

 reg |= ATTR_CFG_GET_FLD(attr, jitter) << SYS_PMSIRR_EL1_RND_SHIFT;
 reg |= event->hw.sample_period;

 return reg;
}
