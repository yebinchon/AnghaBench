
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_btt {int ndns; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_dbg (struct device*,char*,int ,char const*,char*) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int nd_namespace_store (struct device*,int *,char const*,size_t) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 struct nd_btt* to_nd_btt (struct device*) ;

__attribute__((used)) static ssize_t namespace_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct nd_btt *nd_btt = to_nd_btt(dev);
 ssize_t rc;

 nd_device_lock(dev);
 nvdimm_bus_lock(dev);
 rc = nd_namespace_store(dev, &nd_btt->ndns, buf, len);
 dev_dbg(dev, "result: %zd wrote: %s%s", rc, buf,
   buf[len - 1] == '\n' ? "" : "\n");
 nvdimm_bus_unlock(dev);
 nd_device_unlock(dev);

 return rc;
}
