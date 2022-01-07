
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {scalar_t__ claim; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* dev_name (scalar_t__) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct nd_namespace_common* to_ndns (struct device*) ;

__attribute__((used)) static ssize_t holder_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_namespace_common *ndns = to_ndns(dev);
 ssize_t rc;

 nd_device_lock(dev);
 rc = sprintf(buf, "%s\n", ndns->claim ? dev_name(ndns->claim) : "");
 nd_device_unlock(dev);

 return rc;
}
