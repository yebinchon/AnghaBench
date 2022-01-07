
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gdma_dmaengine_chan {int id; scalar_t__ desc; } ;
struct TYPE_4__ {int dev; } ;
struct gdma_dma_dev {int chan_issued; TYPE_2__ ddev; int cnt; struct gdma_dmaengine_chan* chan; TYPE_1__* data; } ;
struct TYPE_3__ {int chancnt; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int gdma_start_transfer (struct gdma_dma_dev*,struct gdma_dmaengine_chan*) ;
 scalar_t__ test_and_clear_bit (unsigned int,int *) ;

__attribute__((used)) static void gdma_dma_tasklet(unsigned long arg)
{
 struct gdma_dma_dev *dma_dev = (struct gdma_dma_dev *)arg;
 struct gdma_dmaengine_chan *chan;
 static unsigned int last_chan;
 unsigned int i, chan_mask;


 i = last_chan;
 chan_mask = dma_dev->data->chancnt - 1;
 do {






  if (atomic_read(&dma_dev->cnt) >= 2) {
   last_chan = i;
   break;
  }

  if (test_and_clear_bit(i, &dma_dev->chan_issued)) {
   chan = &dma_dev->chan[i];
   if (chan->desc) {
    atomic_inc(&dma_dev->cnt);
    gdma_start_transfer(dma_dev, chan);
   } else {
    dev_dbg(dma_dev->ddev.dev,
     "chan %d no desc to issue\n",
     chan->id);
   }
   if (!dma_dev->chan_issued)
    break;
  }

  i = (i + 1) & chan_mask;
 } while (i != last_chan);
}
