
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_dma_chan {TYPE_1__* dma; int flow; int channel; int ref_count; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int name; int ref_count; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int chan_stop (struct knav_dma_chan*) ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 TYPE_2__* kdev ;
 int knav_dma_hw_destroy (TYPE_1__*) ;
 int pr_err (char*) ;

void knav_dma_close_channel(void *channel)
{
 struct knav_dma_chan *chan = channel;

 if (!kdev) {
  pr_err("keystone-navigator-dma driver not registered\n");
  return;
 }

 if (atomic_dec_return(&chan->ref_count) <= 0)
  chan_stop(chan);

 if (atomic_dec_return(&chan->dma->ref_count) <= 0)
  knav_dma_hw_destroy(chan->dma);

 dev_dbg(kdev->dev, "channel %d or flow %d closed from DMA %s\n",
   chan->channel, chan->flow, chan->dma->name);
}
