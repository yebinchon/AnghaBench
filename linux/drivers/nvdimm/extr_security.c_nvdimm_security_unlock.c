
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct device {int dummy; } ;


 int __nvdimm_security_unlock (struct nvdimm*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 struct nvdimm* to_nvdimm (struct device*) ;

int nvdimm_security_unlock(struct device *dev)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);
 int rc;

 nvdimm_bus_lock(dev);
 rc = __nvdimm_security_unlock(nvdimm);
 nvdimm_bus_unlock(dev);
 return rc;
}
