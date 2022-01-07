
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int async_cookie_t ;


 int device_unregister (struct device*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static void nd_async_device_unregister(void *d, async_cookie_t cookie)
{
 struct device *dev = d;


 nvdimm_bus_lock(dev);
 nvdimm_bus_unlock(dev);

 device_unregister(dev);
 put_device(dev);
}
