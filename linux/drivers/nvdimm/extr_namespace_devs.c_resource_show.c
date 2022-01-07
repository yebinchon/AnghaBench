
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_2__ {struct resource res; } ;
struct nd_namespace_pmem {TYPE_1__ nsio; } ;
struct nd_namespace_io {struct resource res; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 scalar_t__ is_namespace_io (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 scalar_t__ resource_size (struct resource*) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct nd_namespace_io* to_nd_namespace_io (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;

__attribute__((used)) static ssize_t resource_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct resource *res;

 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  res = &nspm->nsio.res;
 } else if (is_namespace_io(dev)) {
  struct nd_namespace_io *nsio = to_nd_namespace_io(dev);

  res = &nsio->res;
 } else
  return -ENXIO;


 if (resource_size(res) == 0)
  return -ENXIO;
 return sprintf(buf, "%#llx\n", (unsigned long long) res->start);
}
