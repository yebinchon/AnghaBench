
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_dma_chan {TYPE_1__* reg_chan; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int control; } ;


 unsigned long DMA_ENABLE ;
 int DMA_TEARDOWN ;
 int DMA_TIMEOUT ;
 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 TYPE_2__* kdev ;
 unsigned long msecs_to_jiffies (int ) ;
 unsigned long readl_relaxed (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int writel_relaxed (int ,int *) ;

__attribute__((used)) static int chan_teardown(struct knav_dma_chan *chan)
{
 unsigned long end, value;

 if (!chan->reg_chan)
  return 0;


 writel_relaxed(DMA_TEARDOWN, &chan->reg_chan->control);


 end = jiffies + msecs_to_jiffies(DMA_TIMEOUT);
 do {
  value = readl_relaxed(&chan->reg_chan->control);
  if ((value & DMA_ENABLE) == 0)
   break;
 } while (time_after(end, jiffies));

 if (readl_relaxed(&chan->reg_chan->control) & DMA_ENABLE) {
  dev_err(kdev->dev, "timeout waiting for teardown\n");
  return -ETIMEDOUT;
 }

 return 0;
}
