
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tce_container {int mm; } ;
struct iommu_table_group {TYPE_2__* ops; } ;
struct iommu_table {long it_allocated_size; TYPE_1__* it_ops; } ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_4__ {long (* get_table_size ) (int ,int ,int ) ;long (* create_table ) (struct iommu_table_group*,int,int ,int ,int ,struct iommu_table**) ;} ;
struct TYPE_3__ {int free; } ;


 long EINVAL ;
 long PAGE_SHIFT ;
 int WARN_ON (int) ;
 long account_locked_vm (int ,long,int) ;
 long stub1 (int ,int ,int ) ;
 long stub2 (struct iommu_table_group*,int,int ,int ,int ,struct iommu_table**) ;

__attribute__((used)) static long tce_iommu_create_table(struct tce_container *container,
   struct iommu_table_group *table_group,
   int num,
   __u32 page_shift,
   __u64 window_size,
   __u32 levels,
   struct iommu_table **ptbl)
{
 long ret, table_size;

 table_size = table_group->ops->get_table_size(page_shift, window_size,
   levels);
 if (!table_size)
  return -EINVAL;

 ret = account_locked_vm(container->mm, table_size >> PAGE_SHIFT, 1);
 if (ret)
  return ret;

 ret = table_group->ops->create_table(table_group, num,
   page_shift, window_size, levels, ptbl);

 WARN_ON(!ret && !(*ptbl)->it_ops->free);
 WARN_ON(!ret && ((*ptbl)->it_allocated_size > table_size));

 return ret;
}
