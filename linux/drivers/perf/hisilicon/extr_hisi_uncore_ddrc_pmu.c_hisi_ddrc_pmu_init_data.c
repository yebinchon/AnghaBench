
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hisi_pmu {int ccl_id; int base; int sccl_id; int index_id; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ device_property_read_u32 (int *,char*,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int hisi_ddrc_pmu_init_data(struct platform_device *pdev,
       struct hisi_pmu *ddrc_pmu)
{
 struct resource *res;





 if (device_property_read_u32(&pdev->dev, "hisilicon,ch-id",
         &ddrc_pmu->index_id)) {
  dev_err(&pdev->dev, "Can not read ddrc channel-id!\n");
  return -EINVAL;
 }

 if (device_property_read_u32(&pdev->dev, "hisilicon,scl-id",
         &ddrc_pmu->sccl_id)) {
  dev_err(&pdev->dev, "Can not read ddrc sccl-id!\n");
  return -EINVAL;
 }

 ddrc_pmu->ccl_id = -1;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ddrc_pmu->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ddrc_pmu->base)) {
  dev_err(&pdev->dev, "ioremap failed for ddrc_pmu resource\n");
  return PTR_ERR(ddrc_pmu->base);
 }

 return 0;
}
