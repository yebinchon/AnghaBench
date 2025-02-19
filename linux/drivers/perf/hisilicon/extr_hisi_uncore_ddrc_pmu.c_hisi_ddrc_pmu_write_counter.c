
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct hw_perf_event {int dummy; } ;
struct hisi_pmu {scalar_t__ base; int dev; } ;


 int GET_DDRC_EVENTID (struct hw_perf_event*) ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ hisi_ddrc_pmu_get_counter_offset (int ) ;
 int hisi_uncore_pmu_counter_valid (struct hisi_pmu*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hisi_ddrc_pmu_write_counter(struct hisi_pmu *ddrc_pmu,
     struct hw_perf_event *hwc, u64 val)
{
 u32 idx = GET_DDRC_EVENTID(hwc);

 if (!hisi_uncore_pmu_counter_valid(ddrc_pmu, idx)) {
  dev_err(ddrc_pmu->dev, "Unsupported event index:%d!\n", idx);
  return;
 }

 writel((u32)val,
        ddrc_pmu->base + hisi_ddrc_pmu_get_counter_offset(idx));
}
