
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 int sba_unmap_page (struct device*,int ,size_t,int ,int ) ;

__attribute__((used)) static void
sba_free(struct device *hwdev, size_t size, void *vaddr,
      dma_addr_t dma_handle, unsigned long attrs)
{
 sba_unmap_page(hwdev, dma_handle, size, 0, 0);
 free_pages((unsigned long) vaddr, get_order(size));
}
