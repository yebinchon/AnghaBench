
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {struct iommu_table** tables; } ;
struct iommu_table_group {int dummy; } ;
struct iommu_table {scalar_t__ it_map; int it_size; int it_offset; } ;


 int IOMMU_TABLE_GROUP_MAX_TABLES ;
 int iommu_release_ownership (struct iommu_table*) ;
 int tce_iommu_clear (struct tce_container*,struct iommu_table*,int ,int ) ;

__attribute__((used)) static void tce_iommu_release_ownership(struct tce_container *container,
  struct iommu_table_group *table_group)
{
 int i;

 for (i = 0; i < IOMMU_TABLE_GROUP_MAX_TABLES; ++i) {
  struct iommu_table *tbl = container->tables[i];

  if (!tbl)
   continue;

  tce_iommu_clear(container, tbl, tbl->it_offset, tbl->it_size);
  if (tbl->it_map)
   iommu_release_ownership(tbl);

  container->tables[i] = ((void*)0);
 }
}
