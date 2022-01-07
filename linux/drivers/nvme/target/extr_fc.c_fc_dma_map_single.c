
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int dma_map_single (struct device*,void*,size_t,int) ;

__attribute__((used)) static inline dma_addr_t
fc_dma_map_single(struct device *dev, void *ptr, size_t size,
  enum dma_data_direction dir)
{
 return dev ? dma_map_single(dev, ptr, size, dir) : (dma_addr_t)0L;
}
