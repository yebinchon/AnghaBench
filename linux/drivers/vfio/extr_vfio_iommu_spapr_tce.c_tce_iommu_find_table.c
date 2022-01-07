
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {struct iommu_table** tables; } ;
struct iommu_table {unsigned long it_page_shift; unsigned long it_offset; unsigned long it_size; } ;
typedef unsigned long phys_addr_t ;


 long IOMMU_TABLE_GROUP_MAX_TABLES ;

__attribute__((used)) static long tce_iommu_find_table(struct tce_container *container,
  phys_addr_t ioba, struct iommu_table **ptbl)
{
 long i;

 for (i = 0; i < IOMMU_TABLE_GROUP_MAX_TABLES; ++i) {
  struct iommu_table *tbl = container->tables[i];

  if (tbl) {
   unsigned long entry = ioba >> tbl->it_page_shift;
   unsigned long start = tbl->it_offset;
   unsigned long end = start + tbl->it_size;

   if ((start <= entry) && (entry < end)) {
    *ptbl = tbl;
    return i;
   }
  }
 }

 return -1;
}
