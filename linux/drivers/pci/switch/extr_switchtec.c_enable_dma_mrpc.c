
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_dev {TYPE_1__* mmio_mrpc; int dma_mrpc_dma_addr; } ;
struct TYPE_2__ {int dma_en; int dma_addr; } ;


 int SWITCHTEC_DMA_MRPC_EN ;
 int flush_wc_buf (struct switchtec_dev*) ;
 int iowrite32 (int ,int *) ;
 int writeq (int ,int *) ;

__attribute__((used)) static void enable_dma_mrpc(struct switchtec_dev *stdev)
{
 writeq(stdev->dma_mrpc_dma_addr, &stdev->mmio_mrpc->dma_addr);
 flush_wc_buf(stdev);
 iowrite32(SWITCHTEC_DMA_MRPC_EN, &stdev->mmio_mrpc->dma_en);
}
