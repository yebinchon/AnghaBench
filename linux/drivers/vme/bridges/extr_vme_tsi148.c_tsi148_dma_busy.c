
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;


 scalar_t__* TSI148_LCSR_DMA ;
 int TSI148_LCSR_DSTA_BSY ;
 scalar_t__ TSI148_LCSR_OFFSET_DSTA ;
 int ioread32be (scalar_t__) ;

__attribute__((used)) static int tsi148_dma_busy(struct vme_bridge *tsi148_bridge, int channel)
{
 u32 tmp;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;

 tmp = ioread32be(bridge->base + TSI148_LCSR_DMA[channel] +
  TSI148_LCSR_OFFSET_DSTA);

 if (tmp & TSI148_LCSR_DSTA_BSY)
  return 0;
 else
  return 1;

}
