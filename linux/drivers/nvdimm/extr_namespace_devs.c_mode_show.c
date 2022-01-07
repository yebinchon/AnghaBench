
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {struct device* claim; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ is_nd_btt (struct device*) ;
 scalar_t__ is_nd_dax (struct device*) ;
 scalar_t__ is_nd_pfn (struct device*) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 scalar_t__ pmem_should_map_pages (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct nd_namespace_common* to_ndns (struct device*) ;

__attribute__((used)) static ssize_t mode_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_namespace_common *ndns = to_ndns(dev);
 struct device *claim;
 char *mode;
 ssize_t rc;

 nd_device_lock(dev);
 claim = ndns->claim;
 if (claim && is_nd_btt(claim))
  mode = "safe";
 else if (claim && is_nd_pfn(claim))
  mode = "memory";
 else if (claim && is_nd_dax(claim))
  mode = "dax";
 else if (!claim && pmem_should_map_pages(dev))
  mode = "memory";
 else
  mode = "raw";
 rc = sprintf(buf, "%s\n", mode);
 nd_device_unlock(dev);

 return rc;
}
