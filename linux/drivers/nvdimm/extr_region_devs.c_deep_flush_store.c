
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int nvdimm_flush (struct nd_region*,int *) ;
 int strtobool (char const*,int*) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static ssize_t deep_flush_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t len)
{
 bool flush;
 int rc = strtobool(buf, &flush);
 struct nd_region *nd_region = to_nd_region(dev);

 if (rc)
  return rc;
 if (!flush)
  return -EINVAL;
 rc = nvdimm_flush(nd_region, ((void*)0));
 if (rc)
  return rc;

 return len;
}
