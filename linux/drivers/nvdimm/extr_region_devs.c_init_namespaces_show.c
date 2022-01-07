
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region_data {int ns_active; int ns_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 struct nd_region_data* dev_get_drvdata (struct device*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t init_namespaces_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region_data *ndrd = dev_get_drvdata(dev);
 ssize_t rc;

 nvdimm_bus_lock(dev);
 if (ndrd)
  rc = sprintf(buf, "%d/%d\n", ndrd->ns_active, ndrd->ns_count);
 else
  rc = -ENXIO;
 nvdimm_bus_unlock(dev);

 return rc;
}
