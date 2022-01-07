
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gdma_dma_dev {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void gdma_dma_write(struct gdma_dma_dev *dma_dev,
      unsigned int reg, uint32_t val)
{
 writel(val, dma_dev->base + reg);
}
