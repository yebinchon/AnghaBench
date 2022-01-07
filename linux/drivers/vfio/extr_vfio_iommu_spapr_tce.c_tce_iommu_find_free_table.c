
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {int * tables; } ;


 int ENOSPC ;
 int IOMMU_TABLE_GROUP_MAX_TABLES ;

__attribute__((used)) static int tce_iommu_find_free_table(struct tce_container *container)
{
 int i;

 for (i = 0; i < IOMMU_TABLE_GROUP_MAX_TABLES; ++i) {
  if (!container->tables[i])
   return i;
 }

 return -ENOSPC;
}
