
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used_mask; } ;
struct hisi_pmu {TYPE_1__ pmu_events; int dev; } ;


 int clear_bit (int,int ) ;
 int dev_err (int ,char*,int) ;
 int hisi_uncore_pmu_counter_valid (struct hisi_pmu*,int) ;

__attribute__((used)) static void hisi_uncore_pmu_clear_event_idx(struct hisi_pmu *hisi_pmu, int idx)
{
 if (!hisi_uncore_pmu_counter_valid(hisi_pmu, idx)) {
  dev_err(hisi_pmu->dev, "Unsupported event index:%d!\n", idx);
  return;
 }

 clear_bit(idx, hisi_pmu->pmu_events.used_mask);
}
