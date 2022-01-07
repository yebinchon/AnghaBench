
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {struct iommu_table** tables; } ;
struct iommu_table_group {struct iommu_table** tables; } ;
struct iommu_table {int it_map; } ;


 int IOMMU_TABLE_GROUP_MAX_TABLES ;
 int iommu_release_ownership (struct iommu_table*) ;
 int iommu_take_ownership (struct iommu_table*) ;

__attribute__((used)) static int tce_iommu_take_ownership(struct tce_container *container,
  struct iommu_table_group *table_group)
{
 int i, j, rc = 0;

 for (i = 0; i < IOMMU_TABLE_GROUP_MAX_TABLES; ++i) {
  struct iommu_table *tbl = table_group->tables[i];

  if (!tbl || !tbl->it_map)
   continue;

  rc = iommu_take_ownership(tbl);
  if (rc) {
   for (j = 0; j < i; ++j)
    iommu_release_ownership(
      table_group->tables[j]);

   return rc;
  }
 }

 for (i = 0; i < IOMMU_TABLE_GROUP_MAX_TABLES; ++i)
  container->tables[i] = table_group->tables[i];

 return 0;
}
