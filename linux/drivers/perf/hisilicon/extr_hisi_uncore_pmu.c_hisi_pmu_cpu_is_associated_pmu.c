
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_pmu {int ccl_id; int sccl_id; } ;


 int hisi_read_sccl_and_ccl_id (int*,int*) ;

__attribute__((used)) static bool hisi_pmu_cpu_is_associated_pmu(struct hisi_pmu *hisi_pmu)
{
 int sccl_id, ccl_id;

 if (hisi_pmu->ccl_id == -1) {

  hisi_read_sccl_and_ccl_id(&sccl_id, ((void*)0));

  return sccl_id == hisi_pmu->sccl_id;
 }

 hisi_read_sccl_and_ccl_id(&sccl_id, &ccl_id);

 return sccl_id == hisi_pmu->sccl_id && ccl_id == hisi_pmu->ccl_id;
}
