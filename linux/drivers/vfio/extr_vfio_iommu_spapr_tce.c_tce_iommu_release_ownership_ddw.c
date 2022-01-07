
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tce_container {scalar_t__* tables; } ;
struct iommu_table_group {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* release_ownership ) (struct iommu_table_group*) ;int (* unset_window ) (struct iommu_table_group*,long) ;} ;


 long IOMMU_TABLE_GROUP_MAX_TABLES ;
 int WARN_ON_ONCE (int) ;
 int stub1 (struct iommu_table_group*,long) ;
 int stub2 (struct iommu_table_group*) ;

__attribute__((used)) static void tce_iommu_release_ownership_ddw(struct tce_container *container,
  struct iommu_table_group *table_group)
{
 long i;

 if (!table_group->ops->unset_window) {
  WARN_ON_ONCE(1);
  return;
 }

 for (i = 0; i < IOMMU_TABLE_GROUP_MAX_TABLES; ++i)
  if (container->tables[i])
   table_group->ops->unset_window(table_group, i);

 table_group->ops->release_ownership(table_group);
}
