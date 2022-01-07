
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu {scalar_t__ version; } ;
struct platform_device {int dev; } ;


 scalar_t__ PCP_PMU_V3 ;
 int acpi_pmu_probe_active_mcb_mcu_l3c (struct xgene_pmu*,struct platform_device*) ;
 int acpi_pmu_v3_probe_active_mcb_mcu_l3c (struct xgene_pmu*,struct platform_device*) ;
 int fdt_pmu_probe_active_mcb_mcu_l3c (struct xgene_pmu*,struct platform_device*) ;
 scalar_t__ has_acpi_companion (int *) ;

__attribute__((used)) static int xgene_pmu_probe_active_mcb_mcu_l3c(struct xgene_pmu *xgene_pmu,
           struct platform_device *pdev)
{
 if (has_acpi_companion(&pdev->dev)) {
  if (xgene_pmu->version == PCP_PMU_V3)
   return acpi_pmu_v3_probe_active_mcb_mcu_l3c(xgene_pmu,
            pdev);
  else
   return acpi_pmu_probe_active_mcb_mcu_l3c(xgene_pmu,
         pdev);
 }
 return fdt_pmu_probe_active_mcb_mcu_l3c(xgene_pmu, pdev);
}
