
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int start; int end; int flags; } ;
struct device {int coherent_dma_mask; int dma_parms; int dma_mask; int type; } ;
struct platform_device {struct device dev; } ;
struct dwc3_qcom {TYPE_3__* dwc3; TYPE_2__* acpi_pdata; } ;
struct TYPE_7__ {int coherent_dma_mask; int dma_parms; int dma_mask; int type; struct device* parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;
struct TYPE_8__ {int dwc3_core_base_size; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int PLATFORM_DEVID_AUTO ;
 int dev_err (struct device*,char*) ;
 int dwc3_qcom_acpi_properties ;
 struct resource* kcalloc (int,int,int ) ;
 int kfree (struct resource*) ;
 int platform_device_add (TYPE_3__*) ;
 int platform_device_add_properties (TYPE_3__*,int ) ;
 int platform_device_add_resources (TYPE_3__*,struct resource*,int) ;
 TYPE_3__* platform_device_alloc (char*,int ) ;
 struct dwc3_qcom* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int dwc3_qcom_acpi_register_core(struct platform_device *pdev)
{
 struct dwc3_qcom *qcom = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;
 struct resource *res, *child_res = ((void*)0);
 int irq;
 int ret;

 qcom->dwc3 = platform_device_alloc("dwc3", PLATFORM_DEVID_AUTO);
 if (!qcom->dwc3)
  return -ENOMEM;

 qcom->dwc3->dev.parent = dev;
 qcom->dwc3->dev.type = dev->type;
 qcom->dwc3->dev.dma_mask = dev->dma_mask;
 qcom->dwc3->dev.dma_parms = dev->dma_parms;
 qcom->dwc3->dev.coherent_dma_mask = dev->coherent_dma_mask;

 child_res = kcalloc(2, sizeof(*child_res), GFP_KERNEL);
 if (!child_res)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "failed to get memory resource\n");
  ret = -ENODEV;
  goto out;
 }

 child_res[0].flags = res->flags;
 child_res[0].start = res->start;
 child_res[0].end = child_res[0].start +
  qcom->acpi_pdata->dwc3_core_base_size;

 irq = platform_get_irq(pdev, 0);
 child_res[1].flags = IORESOURCE_IRQ;
 child_res[1].start = child_res[1].end = irq;

 ret = platform_device_add_resources(qcom->dwc3, child_res, 2);
 if (ret) {
  dev_err(&pdev->dev, "failed to add resources\n");
  goto out;
 }

 ret = platform_device_add_properties(qcom->dwc3,
          dwc3_qcom_acpi_properties);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add properties\n");
  goto out;
 }

 ret = platform_device_add(qcom->dwc3);
 if (ret)
  dev_err(&pdev->dev, "failed to add device\n");

out:
 kfree(child_res);
 return ret;
}
