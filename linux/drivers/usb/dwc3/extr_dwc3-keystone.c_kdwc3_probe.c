
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dwc3_keystone {struct device* dev; int usbss; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 struct dwc3_keystone* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct dwc3_keystone*) ;
 int dwc3_keystone_interrupt ;
 int kdwc3_disable_irqs (struct dwc3_keystone*) ;
 int kdwc3_enable_irqs (struct dwc3_keystone*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_platform_populate (struct device_node*,int *,int *,struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dwc3_keystone*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static int kdwc3_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = pdev->dev.of_node;
 struct dwc3_keystone *kdwc;
 int error, irq;

 kdwc = devm_kzalloc(dev, sizeof(*kdwc), GFP_KERNEL);
 if (!kdwc)
  return -ENOMEM;

 platform_set_drvdata(pdev, kdwc);

 kdwc->dev = dev;

 kdwc->usbss = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(kdwc->usbss))
  return PTR_ERR(kdwc->usbss);

 pm_runtime_enable(kdwc->dev);

 error = pm_runtime_get_sync(kdwc->dev);
 if (error < 0) {
  dev_err(kdwc->dev, "pm_runtime_get_sync failed, error %d\n",
   error);
  goto err_irq;
 }


 if (of_device_is_compatible(node, "ti,am654-dwc3"))
  goto skip_irq;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  error = irq;
  goto err_irq;
 }

 error = devm_request_irq(dev, irq, dwc3_keystone_interrupt, IRQF_SHARED,
   dev_name(dev), kdwc);
 if (error) {
  dev_err(dev, "failed to request IRQ #%d --> %d\n",
    irq, error);
  goto err_irq;
 }

 kdwc3_enable_irqs(kdwc);

skip_irq:
 error = of_platform_populate(node, ((void*)0), ((void*)0), dev);
 if (error) {
  dev_err(&pdev->dev, "failed to create dwc3 core\n");
  goto err_core;
 }

 return 0;

err_core:
 kdwc3_disable_irqs(kdwc);
err_irq:
 pm_runtime_put_sync(kdwc->dev);
 pm_runtime_disable(kdwc->dev);

 return error;
}
