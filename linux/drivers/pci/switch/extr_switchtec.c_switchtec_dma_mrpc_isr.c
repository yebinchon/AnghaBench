
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_dev {int mrpc_work; TYPE_1__* mmio_part_cfg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int mrpc_comp_hdr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SWITCHTEC_EVENT_CLEAR ;
 int SWITCHTEC_EVENT_EN_IRQ ;
 int iowrite32 (int,int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t switchtec_dma_mrpc_isr(int irq, void *dev)
{
 struct switchtec_dev *stdev = dev;
 irqreturn_t ret = IRQ_NONE;

 iowrite32(SWITCHTEC_EVENT_CLEAR |
    SWITCHTEC_EVENT_EN_IRQ,
    &stdev->mmio_part_cfg->mrpc_comp_hdr);
 schedule_work(&stdev->mrpc_work);

 ret = IRQ_HANDLED;
 return ret;
}
