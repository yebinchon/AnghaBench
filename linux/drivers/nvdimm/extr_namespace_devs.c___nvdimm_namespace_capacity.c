
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int res; } ;
struct nd_namespace_pmem {TYPE_1__ nsio; } ;
struct nd_namespace_io {int res; } ;
struct device {int dummy; } ;
struct nd_namespace_common {struct device dev; } ;
typedef int resource_size_t ;


 int WARN_ONCE (int,char*) ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_io (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 int nd_namespace_blk_size (int ) ;
 int resource_size (int *) ;
 int to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_io* to_nd_namespace_io (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;

resource_size_t __nvdimm_namespace_capacity(struct nd_namespace_common *ndns)
{
 struct device *dev = &ndns->dev;

 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  return resource_size(&nspm->nsio.res);
 } else if (is_namespace_blk(dev)) {
  return nd_namespace_blk_size(to_nd_namespace_blk(dev));
 } else if (is_namespace_io(dev)) {
  struct nd_namespace_io *nsio = to_nd_namespace_io(dev);

  return resource_size(&nsio->res);
 } else
  WARN_ONCE(1, "unknown namespace type\n");
 return 0;
}
