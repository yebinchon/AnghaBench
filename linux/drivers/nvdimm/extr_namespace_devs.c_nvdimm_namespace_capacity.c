
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int dev; } ;
typedef int resource_size_t ;


 int __nvdimm_namespace_capacity (struct nd_namespace_common*) ;
 int nvdimm_bus_lock (int *) ;
 int nvdimm_bus_unlock (int *) ;

resource_size_t nvdimm_namespace_capacity(struct nd_namespace_common *ndns)
{
 resource_size_t size;

 nvdimm_bus_lock(&ndns->dev);
 size = __nvdimm_namespace_capacity(ndns);
 nvdimm_bus_unlock(&ndns->dev);

 return size;
}
