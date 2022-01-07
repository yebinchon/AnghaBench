
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nd_region {int dummy; } ;
struct nd_namespace_pmem {int * uuid; } ;
struct nd_namespace_blk {int * uuid; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int __size_store (struct device*,unsigned long long) ;
 int dev_dbg (struct device*,char*,unsigned long long,char*,int) ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 int kfree (int *) ;
 int kstrtoull (char const*,int ,unsigned long long*) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int nd_namespace_label_update (struct nd_region*,struct device*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;
 struct nd_region* to_nd_region (int ) ;
 int wait_nvdimm_bus_probe_idle (struct device*) ;

__attribute__((used)) static ssize_t size_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);
 unsigned long long val;
 u8 **uuid = ((void*)0);
 int rc;

 rc = kstrtoull(buf, 0, &val);
 if (rc)
  return rc;

 nd_device_lock(dev);
 nvdimm_bus_lock(dev);
 wait_nvdimm_bus_probe_idle(dev);
 rc = __size_store(dev, val);
 if (rc >= 0)
  rc = nd_namespace_label_update(nd_region, dev);

 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  uuid = &nspm->uuid;
 } else if (is_namespace_blk(dev)) {
  struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);

  uuid = &nsblk->uuid;
 }

 if (rc == 0 && val == 0 && uuid) {

  kfree(*uuid);
  *uuid = ((void*)0);
 }

 dev_dbg(dev, "%llx %s (%d)\n", val, rc < 0 ? "fail" : "success", rc);

 nvdimm_bus_unlock(dev);
 nd_device_unlock(dev);

 return rc < 0 ? rc : len;
}
