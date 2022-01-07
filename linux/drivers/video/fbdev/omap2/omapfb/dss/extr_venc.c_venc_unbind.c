
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct device {int dummy; } ;


 int pm_runtime_disable (int *) ;
 struct platform_device* to_platform_device (struct device*) ;
 int venc_uninit_output (struct platform_device*) ;

__attribute__((used)) static void venc_unbind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);

 venc_uninit_output(pdev);

 pm_runtime_disable(&pdev->dev);
}
