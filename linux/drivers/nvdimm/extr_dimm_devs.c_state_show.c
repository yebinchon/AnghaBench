
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int busy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ atomic_read (int *) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static ssize_t state_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);





 nvdimm_bus_lock(dev);
 nvdimm_bus_unlock(dev);
 return sprintf(buf, "%s\n", atomic_read(&nvdimm->busy)
   ? "active" : "idle");
}
