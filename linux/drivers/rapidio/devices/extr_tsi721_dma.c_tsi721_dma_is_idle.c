
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi721_bdma_chan {scalar_t__ regs; } ;


 scalar_t__ TSI721_DMAC_STS ;
 int TSI721_DMAC_STS_RUN ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static bool tsi721_dma_is_idle(struct tsi721_bdma_chan *bdma_chan)
{
 u32 sts;

 sts = ioread32(bdma_chan->regs + TSI721_DMAC_STS);
 return ((sts & TSI721_DMAC_STS_RUN) == 0);
}
