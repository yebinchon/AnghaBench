
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smmu_pmu {int options; int dev; } ;



 int SMMU_PMCG_EVCNTR_RDONLY ;
 scalar_t__ dev_get_platdata (int ) ;
 int dev_notice (int ,char*,int ) ;

__attribute__((used)) static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
{
 u32 model;

 model = *(u32 *)dev_get_platdata(smmu_pmu->dev);

 switch (model) {
 case 128:

  smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
  break;
 }

 dev_notice(smmu_pmu->dev, "option mask 0x%x\n", smmu_pmu->options);
}
