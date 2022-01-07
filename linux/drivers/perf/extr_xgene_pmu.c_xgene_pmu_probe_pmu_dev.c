
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu {int dummy; } ;
struct platform_device {int dev; } ;


 int acpi_pmu_probe_pmu_dev (struct xgene_pmu*,struct platform_device*) ;
 int fdt_pmu_probe_pmu_dev (struct xgene_pmu*,struct platform_device*) ;
 scalar_t__ has_acpi_companion (int *) ;

__attribute__((used)) static int xgene_pmu_probe_pmu_dev(struct xgene_pmu *xgene_pmu,
       struct platform_device *pdev)
{
 if (has_acpi_companion(&pdev->dev))
  return acpi_pmu_probe_pmu_dev(xgene_pmu, pdev);
 return fdt_pmu_probe_pmu_dev(xgene_pmu, pdev);
}
