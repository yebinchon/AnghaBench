
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int platform_device_unregister (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int arche_remove_child(struct device *dev, void *unused)
{
 struct platform_device *pdev = to_platform_device(dev);

 platform_device_unregister(pdev);

 return 0;
}
