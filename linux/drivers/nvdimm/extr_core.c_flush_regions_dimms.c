
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_for_each_child (struct device*,int *,int ) ;
 int flush_namespaces ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;

__attribute__((used)) static int flush_regions_dimms(struct device *dev, void *data)
{
 nd_device_lock(dev);
 nd_device_unlock(dev);
 device_for_each_child(dev, ((void*)0), flush_namespaces);
 return 0;
}
