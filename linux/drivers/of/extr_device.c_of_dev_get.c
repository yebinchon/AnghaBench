
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

struct platform_device *of_dev_get(struct platform_device *dev)
{
 struct device *tmp;

 if (!dev)
  return ((void*)0);
 tmp = get_device(&dev->dev);
 if (tmp)
  return to_platform_device(tmp);
 else
  return ((void*)0);
}
