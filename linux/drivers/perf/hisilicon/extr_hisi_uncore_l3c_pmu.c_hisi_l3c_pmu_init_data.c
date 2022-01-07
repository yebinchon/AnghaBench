
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hisi_pmu {unsigned long long index_id; int base; int ccl_id; int sccl_id; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int dev_err (int *,char*) ;
 scalar_t__ device_property_read_u32 (int *,char*,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int hisi_l3c_pmu_init_data(struct platform_device *pdev,
      struct hisi_pmu *l3c_pmu)
{
 unsigned long long id;
 struct resource *res;
 acpi_status status;

 status = acpi_evaluate_integer(ACPI_HANDLE(&pdev->dev),
           "_UID", ((void*)0), &id);
 if (ACPI_FAILURE(status))
  return -EINVAL;

 l3c_pmu->index_id = id;





 if (device_property_read_u32(&pdev->dev, "hisilicon,scl-id",
         &l3c_pmu->sccl_id)) {
  dev_err(&pdev->dev, "Can not read l3c sccl-id!\n");
  return -EINVAL;
 }

 if (device_property_read_u32(&pdev->dev, "hisilicon,ccl-id",
         &l3c_pmu->ccl_id)) {
  dev_err(&pdev->dev, "Can not read l3c ccl-id!\n");
  return -EINVAL;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 l3c_pmu->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(l3c_pmu->base)) {
  dev_err(&pdev->dev, "ioremap failed for l3c_pmu resource\n");
  return PTR_ERR(l3c_pmu->base);
 }

 return 0;
}
