
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int platform_device_unregister (int ) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int __unregister_subdev(struct device *dev, void *d)
{
 platform_device_unregister(to_platform_device(dev));
 return 0;
}
