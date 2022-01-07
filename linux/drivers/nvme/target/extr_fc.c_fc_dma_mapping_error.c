
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int dma_mapping_error (struct device*,int ) ;

__attribute__((used)) static inline int
fc_dma_mapping_error(struct device *dev, dma_addr_t dma_addr)
{
 return dev ? dma_mapping_error(dev, dma_addr) : 0;
}
