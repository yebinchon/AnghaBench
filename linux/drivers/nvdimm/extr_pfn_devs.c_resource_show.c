
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct nd_pfn_sb {int start_pad; int dataoff; } ;
struct nd_pfn {struct nd_namespace_common* ndns; struct nd_pfn_sb* pfn_sb; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int ssize_t ;


 int ENXIO ;
 scalar_t__ __le32_to_cpu (int ) ;
 scalar_t__ __le64_to_cpu (int ) ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int sprintf (char*,char*,scalar_t__) ;
 struct nd_namespace_io* to_nd_namespace_io (int *) ;
 struct nd_pfn* to_nd_pfn_safe (struct device*) ;

__attribute__((used)) static ssize_t resource_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_pfn *nd_pfn = to_nd_pfn_safe(dev);
 ssize_t rc;

 nd_device_lock(dev);
 if (dev->driver) {
  struct nd_pfn_sb *pfn_sb = nd_pfn->pfn_sb;
  u64 offset = __le64_to_cpu(pfn_sb->dataoff);
  struct nd_namespace_common *ndns = nd_pfn->ndns;
  u32 start_pad = __le32_to_cpu(pfn_sb->start_pad);
  struct nd_namespace_io *nsio = to_nd_namespace_io(&ndns->dev);

  rc = sprintf(buf, "%#llx\n", (unsigned long long) nsio->res.start
    + start_pad + offset);
 } else {

  rc = -ENXIO;
 }
 nd_device_unlock(dev);

 return rc;
}
