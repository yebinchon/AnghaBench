
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_drvdata {int dummy; } ;
struct nvdimm {int busy; } ;
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm_drvdata* ndd; int lock; struct nvdimm* nvdimm; } ;


 int atomic_dec (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nd_mapping_free_labels (struct nd_mapping*) ;
 int put_ndd (struct nvdimm_drvdata*) ;

__attribute__((used)) static void deactivate_labels(void *region)
{
 struct nd_region *nd_region = region;
 int i;

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  struct nvdimm_drvdata *ndd = nd_mapping->ndd;
  struct nvdimm *nvdimm = nd_mapping->nvdimm;

  mutex_lock(&nd_mapping->lock);
  nd_mapping_free_labels(nd_mapping);
  mutex_unlock(&nd_mapping->lock);

  put_ndd(ndd);
  nd_mapping->ndd = ((void*)0);
  if (ndd)
   atomic_dec(&nvdimm->busy);
 }
}
