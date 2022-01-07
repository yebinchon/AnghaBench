
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int flags; } ;
struct perf_event {TYPE_1__ hw; } ;


 int ARMPMU_EVT_64BIT ;
 int GENMASK_ULL (int,int ) ;

__attribute__((used)) static inline u64 arm_pmu_event_max_period(struct perf_event *event)
{
 if (event->hw.flags & ARMPMU_EVT_64BIT)
  return GENMASK_ULL(63, 0);
 else
  return GENMASK_ULL(31, 0);
}
