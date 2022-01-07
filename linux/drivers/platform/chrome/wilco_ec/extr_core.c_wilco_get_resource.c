
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int IORESOURCE_IO ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 struct resource* devm_request_region (struct device*,int ,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static struct resource *wilco_get_resource(struct platform_device *pdev,
        int index)
{
 struct device *dev = &pdev->dev;
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_IO, index);
 if (!res) {
  dev_dbg(dev, "Couldn't find IO resource %d\n", index);
  return res;
 }

 return devm_request_region(dev, res->start, resource_size(res),
       dev_name(dev));
}
