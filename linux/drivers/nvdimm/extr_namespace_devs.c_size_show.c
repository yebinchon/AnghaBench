
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ nvdimm_namespace_capacity (int ) ;
 int sprintf (char*,char*,unsigned long long) ;
 int to_ndns (struct device*) ;

__attribute__((used)) static ssize_t size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%llu\n", (unsigned long long)
   nvdimm_namespace_capacity(to_ndns(dev)));
}
