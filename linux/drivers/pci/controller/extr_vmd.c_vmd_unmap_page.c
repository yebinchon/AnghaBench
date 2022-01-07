
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_unmap_page_attrs (int ,int ,size_t,int,unsigned long) ;
 int to_vmd_dev (struct device*) ;

__attribute__((used)) static void vmd_unmap_page(struct device *dev, dma_addr_t addr, size_t size,
      enum dma_data_direction dir, unsigned long attrs)
{
 dma_unmap_page_attrs(to_vmd_dev(dev), addr, size, dir, attrs);
}
