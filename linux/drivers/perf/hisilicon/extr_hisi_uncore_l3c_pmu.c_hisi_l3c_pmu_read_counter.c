
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hw_perf_event {int idx; } ;
struct hisi_pmu {scalar_t__ base; int dev; } ;


 int dev_err (int ,char*,int ) ;
 scalar_t__ hisi_l3c_pmu_get_counter_offset (int ) ;
 int hisi_uncore_pmu_counter_valid (struct hisi_pmu*,int ) ;
 int readq (scalar_t__) ;

__attribute__((used)) static u64 hisi_l3c_pmu_read_counter(struct hisi_pmu *l3c_pmu,
         struct hw_perf_event *hwc)
{
 u32 idx = hwc->idx;

 if (!hisi_uncore_pmu_counter_valid(l3c_pmu, idx)) {
  dev_err(l3c_pmu->dev, "Unsupported event index:%d!\n", idx);
  return 0;
 }


 return readq(l3c_pmu->base + hisi_l3c_pmu_get_counter_offset(idx));
}
