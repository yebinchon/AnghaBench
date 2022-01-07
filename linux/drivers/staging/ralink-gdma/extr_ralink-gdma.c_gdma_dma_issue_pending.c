
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct gdma_dmaengine_chan {TYPE_2__ vchan; int id; int desc; } ;
struct TYPE_3__ {int dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; int task; int chan_issued; } ;
struct dma_chan {int dummy; } ;


 int dev_dbg (int ,char*,int ) ;
 struct gdma_dma_dev* gdma_dma_chan_get_dev (struct gdma_dmaengine_chan*) ;
 scalar_t__ gdma_next_desc (struct gdma_dmaengine_chan*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 struct gdma_dmaengine_chan* to_gdma_dma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_2__*) ;

__attribute__((used)) static void gdma_dma_issue_pending(struct dma_chan *c)
{
 struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 unsigned long flags;

 spin_lock_irqsave(&chan->vchan.lock, flags);
 if (vchan_issue_pending(&chan->vchan) && !chan->desc) {
  if (gdma_next_desc(chan)) {
   set_bit(chan->id, &dma_dev->chan_issued);
   tasklet_schedule(&dma_dev->task);
  } else {
   dev_dbg(dma_dev->ddev.dev, "chan %d no desc to issue\n",
    chan->id);
  }
 }
 spin_unlock_irqrestore(&chan->vchan.lock, flags);
}
