
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {scalar_t__ v2; int mm; } ;
struct iommu_table {int it_level_size; scalar_t__ it_userspace; scalar_t__ it_indirect_levels; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int __be64 ;


 int DMA_NONE ;
 int * IOMMU_TABLE_USERSPACE_ENTRY_RO (struct iommu_table*,unsigned long) ;
 int cond_resched () ;
 int iommu_tce_kill (struct iommu_table*,unsigned long,unsigned long) ;
 long iommu_tce_xchg_no_kill (int ,struct iommu_table*,unsigned long,unsigned long*,int*) ;
 int tce_iommu_unuse_page (struct tce_container*,unsigned long) ;
 int tce_iommu_unuse_page_v2 (struct tce_container*,struct iommu_table*,unsigned long) ;

__attribute__((used)) static int tce_iommu_clear(struct tce_container *container,
  struct iommu_table *tbl,
  unsigned long entry, unsigned long pages)
{
 unsigned long oldhpa;
 long ret;
 enum dma_data_direction direction;
 unsigned long lastentry = entry + pages, firstentry = entry;

 for ( ; entry < lastentry; ++entry) {
  if (tbl->it_indirect_levels && tbl->it_userspace) {
   __be64 *pua = IOMMU_TABLE_USERSPACE_ENTRY_RO(tbl,
     entry);
   if (!pua) {

    entry |= tbl->it_level_size - 1;
    continue;
   }
  }

  cond_resched();

  direction = DMA_NONE;
  oldhpa = 0;
  ret = iommu_tce_xchg_no_kill(container->mm, tbl, entry, &oldhpa,
    &direction);
  if (ret)
   continue;

  if (direction == DMA_NONE)
   continue;

  if (container->v2) {
   tce_iommu_unuse_page_v2(container, tbl, entry);
   continue;
  }

  tce_iommu_unuse_page(container, oldhpa);
 }

 iommu_tce_kill(tbl, firstentry, pages);

 return 0;
}
