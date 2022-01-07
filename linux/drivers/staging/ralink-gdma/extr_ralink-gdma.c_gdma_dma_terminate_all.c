
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct gdma_dmaengine_chan {int id; TYPE_2__ vchan; int * desc; } ;
struct TYPE_4__ {int dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; int chan_issued; } ;
struct dma_chan {int dummy; } ;


 int GDMA_REG_CTRL0 (int ) ;
 int GDMA_REG_CTRL0_ENABLE ;
 int LIST_HEAD (int ) ;
 int clear_bit (int ,int *) ;
 int cpu_relax () ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int ) ;
 struct gdma_dma_dev* gdma_dma_chan_get_dev (struct gdma_dmaengine_chan*) ;
 int gdma_dma_read (struct gdma_dma_dev*,int ) ;
 int gdma_dma_write (struct gdma_dma_dev*,int ,int ) ;
 int head ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 struct gdma_dmaengine_chan* to_gdma_dma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;

__attribute__((used)) static int gdma_dma_terminate_all(struct dma_chan *c)
{
 struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 unsigned long flags, timeout;
 LIST_HEAD(head);
 int i = 0;

 spin_lock_irqsave(&chan->vchan.lock, flags);
 chan->desc = ((void*)0);
 clear_bit(chan->id, &dma_dev->chan_issued);
 vchan_get_all_descriptors(&chan->vchan, &head);
 spin_unlock_irqrestore(&chan->vchan.lock, flags);

 vchan_dma_desc_free_list(&chan->vchan, &head);


 timeout = jiffies + msecs_to_jiffies(5000);
 while (gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id)) &
   GDMA_REG_CTRL0_ENABLE) {
  if (time_after_eq(jiffies, timeout)) {
   dev_err(dma_dev->ddev.dev, "chan %d wait timeout\n",
    chan->id);

   gdma_dma_write(dma_dev, GDMA_REG_CTRL0(chan->id), 0);
   break;
  }
  cpu_relax();
  i++;
 }

 if (i)
  dev_dbg(dma_dev->ddev.dev, "terminate chan %d loops %d\n",
   chan->id, i);

 return 0;
}
