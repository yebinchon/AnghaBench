
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; int task; } ;
typedef int irqreturn_t ;


 int HSDMA_INT_RX_Q0 ;
 int HSDMA_REG_INT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int ,char*,int) ;
 scalar_t__ likely (int) ;
 int mtk_hsdma_read (struct mtk_hsdam_engine*,int ) ;
 int mtk_hsdma_write (struct mtk_hsdam_engine*,int ,int) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t mtk_hsdma_irq(int irq, void *devid)
{
 struct mtk_hsdam_engine *hsdma = devid;
 u32 status;

 status = mtk_hsdma_read(hsdma, HSDMA_REG_INT_STATUS);
 if (unlikely(!status))
  return IRQ_NONE;

 if (likely(status & HSDMA_INT_RX_Q0))
  tasklet_schedule(&hsdma->task);
 else
  dev_dbg(hsdma->ddev.dev, "unhandle irq status %08x\n", status);

 mtk_hsdma_write(hsdma, HSDMA_REG_INT_STATUS, status);

 return IRQ_HANDLED;
}
