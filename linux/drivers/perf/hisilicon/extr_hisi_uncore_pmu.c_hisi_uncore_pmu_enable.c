
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct TYPE_3__ {int used_mask; } ;
struct hisi_pmu {TYPE_2__* ops; int num_counters; TYPE_1__ pmu_events; } ;
struct TYPE_4__ {int (* start_counters ) (struct hisi_pmu*) ;} ;


 int bitmap_weight (int ,int ) ;
 int stub1 (struct hisi_pmu*) ;
 struct hisi_pmu* to_hisi_pmu (struct pmu*) ;

void hisi_uncore_pmu_enable(struct pmu *pmu)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(pmu);
 int enabled = bitmap_weight(hisi_pmu->pmu_events.used_mask,
        hisi_pmu->num_counters);

 if (!enabled)
  return;

 hisi_pmu->ops->start_counters(hisi_pmu);
}
