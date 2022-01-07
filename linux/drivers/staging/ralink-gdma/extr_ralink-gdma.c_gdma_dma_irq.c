
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gdma_dma_dev {int task; scalar_t__ chan_issued; int cnt; int * chan; TYPE_1__* data; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int done_int_reg; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atomic_dec (int *) ;
 int gdma_dma_chan_irq (struct gdma_dma_dev*,int *) ;
 int gdma_dma_read (struct gdma_dma_dev*,int) ;
 int gdma_dma_write (struct gdma_dma_dev*,int,int) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t gdma_dma_irq(int irq, void *devid)
{
 struct gdma_dma_dev *dma_dev = devid;
 u32 done, done_reg;
 unsigned int i;

 done_reg = dma_dev->data->done_int_reg;
 done = gdma_dma_read(dma_dev, done_reg);
 if (unlikely(!done))
  return IRQ_NONE;


 gdma_dma_write(dma_dev, done_reg, done);

 i = 0;
 while (done) {
  if (done & 0x1) {
   gdma_dma_chan_irq(dma_dev, &dma_dev->chan[i]);
   atomic_dec(&dma_dev->cnt);
  }
  done >>= 1;
  i++;
 }


 if (dma_dev->chan_issued)
  tasklet_schedule(&dma_dev->task);

 return IRQ_HANDLED;
}
