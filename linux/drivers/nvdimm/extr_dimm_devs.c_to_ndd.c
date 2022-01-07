
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
struct nvdimm {int dev; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;


 int WARN_ON_ONCE (int) ;
 struct nvdimm_drvdata* dev_get_drvdata (int *) ;
 int is_nvdimm_bus_locked (int *) ;

struct nvdimm_drvdata *to_ndd(struct nd_mapping *nd_mapping)
{
 struct nvdimm *nvdimm = nd_mapping->nvdimm;

 WARN_ON_ONCE(!is_nvdimm_bus_locked(&nvdimm->dev));

 return dev_get_drvdata(&nvdimm->dev);
}
