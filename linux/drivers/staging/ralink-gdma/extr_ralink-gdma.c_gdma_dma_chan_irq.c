
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int lock; } ;
struct gdma_dmaengine_chan {int next_sg; TYPE_3__ vchan; int id; struct gdma_dma_desc* desc; } ;
struct TYPE_7__ {int dev; } ;
struct gdma_dma_dev {int chan_issued; TYPE_2__ ddev; } ;
struct TYPE_9__ {int node; } ;
struct gdma_dma_desc {int num_sgs; TYPE_4__ vdesc; TYPE_1__* sg; int residue; scalar_t__ cyclic; } ;
struct TYPE_6__ {scalar_t__ len; } ;


 int dev_dbg (int ,char*,int ) ;
 int gdma_next_desc (struct gdma_dmaengine_chan*) ;
 int list_del (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vchan_cookie_complete (TYPE_4__*) ;
 int vchan_cyclic_callback (TYPE_4__*) ;

__attribute__((used)) static void gdma_dma_chan_irq(struct gdma_dma_dev *dma_dev,
         struct gdma_dmaengine_chan *chan)
{
 struct gdma_dma_desc *desc;
 unsigned long flags;
 int chan_issued;

 chan_issued = 0;
 spin_lock_irqsave(&chan->vchan.lock, flags);
 desc = chan->desc;
 if (desc) {
  if (desc->cyclic) {
   vchan_cyclic_callback(&desc->vdesc);
   if (chan->next_sg == desc->num_sgs)
    chan->next_sg = 0;
   chan_issued = 1;
  } else {
   desc->residue -= desc->sg[chan->next_sg - 1].len;
   if (chan->next_sg == desc->num_sgs) {
    list_del(&desc->vdesc.node);
    vchan_cookie_complete(&desc->vdesc);
    chan_issued = gdma_next_desc(chan);
   } else {
    chan_issued = 1;
   }
  }
 } else {
  dev_dbg(dma_dev->ddev.dev, "chan %d no desc to complete\n",
   chan->id);
 }
 if (chan_issued)
  set_bit(chan->id, &dma_dev->chan_issued);
 spin_unlock_irqrestore(&chan->vchan.lock, flags);
}
