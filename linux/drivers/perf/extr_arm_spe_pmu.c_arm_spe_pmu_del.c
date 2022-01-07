
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int PERF_EF_UPDATE ;
 int arm_spe_pmu_stop (struct perf_event*,int ) ;

__attribute__((used)) static void arm_spe_pmu_del(struct perf_event *event, int flags)
{
 arm_spe_pmu_stop(event, PERF_EF_UPDATE);
}
