
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct nvdimm_drvdata {int dpa; int dev; } ;
struct nd_label_id {int dummy; } ;
typedef int resource_size_t ;


 int GFP_KERNEL ;
 int WARN_ON_ONCE (int) ;
 struct resource* __request_region (int *,int ,int ,char*,int ) ;
 int is_nvdimm_bus_locked (int ) ;
 int kfree (char*) ;
 char* kmemdup (struct nd_label_id*,int,int ) ;

struct resource *nvdimm_allocate_dpa(struct nvdimm_drvdata *ndd,
  struct nd_label_id *label_id, resource_size_t start,
  resource_size_t n)
{
 char *name = kmemdup(label_id, sizeof(*label_id), GFP_KERNEL);
 struct resource *res;

 if (!name)
  return ((void*)0);

 WARN_ON_ONCE(!is_nvdimm_bus_locked(ndd->dev));
 res = __request_region(&ndd->dpa, start, n, name, 0);
 if (!res)
  kfree(name);
 return res;
}
