
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dwc3_keystone {int dev; } ;
struct device_node {int dummy; } ;


 int device_for_each_child (TYPE_1__*,int *,int ) ;
 int kdwc3_disable_irqs (struct dwc3_keystone*) ;
 int kdwc3_remove_core ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct dwc3_keystone* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int kdwc3_remove(struct platform_device *pdev)
{
 struct dwc3_keystone *kdwc = platform_get_drvdata(pdev);
 struct device_node *node = pdev->dev.of_node;

 if (!of_device_is_compatible(node, "ti,am654-dwc3"))
  kdwc3_disable_irqs(kdwc);

 device_for_each_child(&pdev->dev, ((void*)0), kdwc3_remove_core);
 pm_runtime_put_sync(kdwc->dev);
 pm_runtime_disable(kdwc->dev);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
