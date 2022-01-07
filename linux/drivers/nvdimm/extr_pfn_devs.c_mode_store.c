
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int PFN_MODE_NONE ;
 int PFN_MODE_PMEM ;
 int PFN_MODE_RAM ;
 int dev_dbg (struct device*,char*,int,char const*,char*) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;
 struct nd_pfn* to_nd_pfn_safe (struct device*) ;

__attribute__((used)) static ssize_t mode_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct nd_pfn *nd_pfn = to_nd_pfn_safe(dev);
 ssize_t rc = 0;

 nd_device_lock(dev);
 nvdimm_bus_lock(dev);
 if (dev->driver)
  rc = -EBUSY;
 else {
  size_t n = len - 1;

  if (strncmp(buf, "pmem\n", n) == 0
    || strncmp(buf, "pmem", n) == 0) {
   nd_pfn->mode = PFN_MODE_PMEM;
  } else if (strncmp(buf, "ram\n", n) == 0
    || strncmp(buf, "ram", n) == 0)
   nd_pfn->mode = PFN_MODE_RAM;
  else if (strncmp(buf, "none\n", n) == 0
    || strncmp(buf, "none", n) == 0)
   nd_pfn->mode = PFN_MODE_NONE;
  else
   rc = -EINVAL;
 }
 dev_dbg(dev, "result: %zd wrote: %s%s", rc, buf,
   buf[len - 1] == '\n' ? "" : "\n");
 nvdimm_bus_unlock(dev);
 nd_device_unlock(dev);

 return rc ? rc : len;
}
