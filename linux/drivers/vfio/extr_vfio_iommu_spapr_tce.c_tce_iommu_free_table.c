
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {int mm; } ;
struct iommu_table {unsigned long it_allocated_size; } ;


 unsigned long PAGE_SHIFT ;
 int account_locked_vm (int ,unsigned long,int) ;
 int iommu_tce_table_put (struct iommu_table*) ;

__attribute__((used)) static void tce_iommu_free_table(struct tce_container *container,
  struct iommu_table *tbl)
{
 unsigned long pages = tbl->it_allocated_size >> PAGE_SHIFT;

 iommu_tce_table_put(tbl);
 account_locked_vm(container->mm, pages, 0);
}
