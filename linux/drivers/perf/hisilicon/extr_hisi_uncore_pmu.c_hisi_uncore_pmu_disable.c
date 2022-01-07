
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct hisi_pmu {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop_counters ) (struct hisi_pmu*) ;} ;


 int stub1 (struct hisi_pmu*) ;
 struct hisi_pmu* to_hisi_pmu (struct pmu*) ;

void hisi_uncore_pmu_disable(struct pmu *pmu)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(pmu);

 hisi_pmu->ops->stop_counters(hisi_pmu);
}
