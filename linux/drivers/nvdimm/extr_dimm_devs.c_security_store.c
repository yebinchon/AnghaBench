
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int nvdimm_security_store (struct device*,char const*,size_t) ;
 int wait_nvdimm_bus_probe_idle (struct device*) ;

__attribute__((used)) static ssize_t security_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)

{
 ssize_t rc;






 nd_device_lock(dev);
 nvdimm_bus_lock(dev);
 wait_nvdimm_bus_probe_idle(dev);
 rc = nvdimm_security_store(dev, buf, len);
 nvdimm_bus_unlock(dev);
 nd_device_unlock(dev);

 return rc;
}
