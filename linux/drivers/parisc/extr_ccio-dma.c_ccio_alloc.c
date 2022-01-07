
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 int PCI_DMA_BIDIRECTIONAL ;
 scalar_t__ __get_free_pages (int ,int ) ;
 scalar_t__ ccio_map_single (struct device*,void*,size_t,int ) ;
 int get_order (size_t) ;
 int hwdev ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void *
ccio_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle, gfp_t flag,
  unsigned long attrs)
{
      void *ret;
        ret = (void *) __get_free_pages(flag, get_order(size));

 if (ret) {
  memset(ret, 0, size);
  *dma_handle = ccio_map_single(dev, ret, size, PCI_DMA_BIDIRECTIONAL);
 }

 return ret;
}
