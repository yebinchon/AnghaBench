
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAPLE_DMA_PAGES ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 void* maple_sendbuf ;

__attribute__((used)) static int maple_get_dma_buffer(void)
{
 maple_sendbuf =
     (void *) __get_free_pages(GFP_KERNEL | __GFP_ZERO,
          MAPLE_DMA_PAGES);
 if (!maple_sendbuf)
  return -ENOMEM;
 return 0;
}
