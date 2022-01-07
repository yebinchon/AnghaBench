
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_map_page_attrs (int ,struct page*,unsigned long,size_t,int,unsigned long) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static dma_addr_t vmd_map_page(struct device *dev, struct page *page,
          unsigned long offset, size_t size,
          enum dma_data_direction dir,
          unsigned long attrs)
{
 return dma_map_page_attrs(to_vmd_dev(dev), page, offset, size, dir,
   attrs);
}
