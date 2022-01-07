
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;

__attribute__((used)) static int flush_namespaces(struct device *dev, void *data)
{
 nd_device_lock(dev);
 nd_device_unlock(dev);
 return 0;
}
