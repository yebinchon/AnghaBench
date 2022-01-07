
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tsi721_dma_sts {int dummy; } ;
struct tsi721_dma_desc {int dummy; } ;
struct tsi721_device {int flags; TYPE_1__* msix; } ;
struct TYPE_5__ {TYPE_3__* device; } ;
struct tsi721_bdma_chan {size_t id; int bd_num; int sts_size; int * sts_base; int sts_phys; TYPE_2__ dchan; int * bd_base; int bd_phys; scalar_t__ regs; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int vector; } ;


 int EFAULT ;
 scalar_t__ TSI721_DMAC_CTL ;
 int TSI721_DMAC_CTL_INIT ;
 scalar_t__ TSI721_DMAC_STS ;
 int TSI721_DMAC_STS_RUN ;
 int TSI721_USING_MSIX ;
 size_t TSI721_VECT_DMA0_DONE ;
 size_t TSI721_VECT_DMA0_INT ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int free_irq (int ,void*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct tsi721_device* to_tsi721 (TYPE_3__*) ;

__attribute__((used)) static int tsi721_bdma_ch_free(struct tsi721_bdma_chan *bdma_chan)
{
 u32 ch_stat;




 if (!bdma_chan->bd_base)
  return 0;


 ch_stat = ioread32(bdma_chan->regs + TSI721_DMAC_STS);
 if (ch_stat & TSI721_DMAC_STS_RUN)
  return -EFAULT;


 iowrite32(TSI721_DMAC_CTL_INIT, bdma_chan->regs + TSI721_DMAC_CTL);
 dma_free_coherent(bdma_chan->dchan.device->dev,
  (bdma_chan->bd_num + 1) * sizeof(struct tsi721_dma_desc),
  bdma_chan->bd_base, bdma_chan->bd_phys);
 bdma_chan->bd_base = ((void*)0);


 dma_free_coherent(bdma_chan->dchan.device->dev,
  bdma_chan->sts_size * sizeof(struct tsi721_dma_sts),
  bdma_chan->sts_base, bdma_chan->sts_phys);
 bdma_chan->sts_base = ((void*)0);
 return 0;
}
