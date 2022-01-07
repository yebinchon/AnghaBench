
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int name; } ;
struct nvdimm_drvdata {int dpa; int dev; } ;


 int WARN_ON_ONCE (int) ;
 int __release_region (int *,int ,int ) ;
 int is_nvdimm_bus_locked (int ) ;
 int kfree (int ) ;
 int resource_size (struct resource*) ;

void nvdimm_free_dpa(struct nvdimm_drvdata *ndd, struct resource *res)
{
 WARN_ON_ONCE(!is_nvdimm_bus_locked(ndd->dev));
 kfree(res->name);
 __release_region(&ndd->dpa, res->start, resource_size(res));
}
