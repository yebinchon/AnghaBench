
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int nvdimm_device_type ;

bool is_nvdimm(struct device *dev)
{
 return dev->type == &nvdimm_device_type;
}
