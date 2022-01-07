
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {int lock; } ;
struct device {int dummy; } ;


 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 struct device** scan_labels (struct nd_region*) ;

__attribute__((used)) static struct device **create_namespaces(struct nd_region *nd_region)
{
 struct nd_mapping *nd_mapping;
 struct device **devs;
 int i;

 if (nd_region->ndr_mappings == 0)
  return ((void*)0);


 for (i = 0; i < nd_region->ndr_mappings; i++) {
  nd_mapping = &nd_region->mapping[i];
  mutex_lock_nested(&nd_mapping->lock, i);
 }

 devs = scan_labels(nd_region);

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  int reverse = nd_region->ndr_mappings - 1 - i;

  nd_mapping = &nd_region->mapping[reverse];
  mutex_unlock(&nd_mapping->lock);
 }

 return devs;
}
