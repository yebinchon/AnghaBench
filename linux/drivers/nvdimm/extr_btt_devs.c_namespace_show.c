
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_btt {TYPE_1__* ndns; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 char* dev_name (int *) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct nd_btt* to_nd_btt (struct device*) ;

__attribute__((used)) static ssize_t namespace_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_btt *nd_btt = to_nd_btt(dev);
 ssize_t rc;

 nvdimm_bus_lock(dev);
 rc = sprintf(buf, "%s\n", nd_btt->ndns
   ? dev_name(&nd_btt->ndns->dev) : "");
 nvdimm_bus_unlock(dev);
 return rc;
}
