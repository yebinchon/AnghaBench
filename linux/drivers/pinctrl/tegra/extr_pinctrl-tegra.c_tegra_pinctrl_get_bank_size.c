
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int IORESOURCE_MEM ;
 struct resource* platform_get_resource (struct platform_device*,int ,unsigned int) ;
 int resource_size (struct resource*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static size_t tegra_pinctrl_get_bank_size(struct device *dev,
       unsigned int bank_id)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, bank_id);

 return resource_size(res) / 4;
}
