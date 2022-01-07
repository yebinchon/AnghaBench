
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* nvdimm_bus_provider (struct nvdimm_bus*) ;
 int sprintf (char*,char*,char*) ;
 struct nvdimm_bus* to_nvdimm_bus (struct device*) ;

__attribute__((used)) static ssize_t provider_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm_bus *nvdimm_bus = to_nvdimm_bus(dev);

 return sprintf(buf, "%s\n", nvdimm_bus_provider(nvdimm_bus));
}
