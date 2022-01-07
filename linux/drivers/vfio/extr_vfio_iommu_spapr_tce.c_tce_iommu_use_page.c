
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_TO_DEVICE ;
 int EFAULT ;
 int FOLL_WRITE ;
 unsigned long PAGE_MASK ;
 unsigned long __pa (unsigned long) ;
 int get_user_pages_fast (unsigned long,int,int ,struct page**) ;
 int iommu_tce_direction (unsigned long) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static int tce_iommu_use_page(unsigned long tce, unsigned long *hpa)
{
 struct page *page = ((void*)0);
 enum dma_data_direction direction = iommu_tce_direction(tce);

 if (get_user_pages_fast(tce & PAGE_MASK, 1,
   direction != DMA_TO_DEVICE ? FOLL_WRITE : 0,
   &page) != 1)
  return -EFAULT;

 *hpa = __pa((unsigned long) page_address(page));

 return 0;
}
