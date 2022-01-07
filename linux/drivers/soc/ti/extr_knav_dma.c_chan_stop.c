
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_dma_chan {int lock; int cfg; TYPE_1__* reg_rx_flow; } ;
struct knav_dma_cfg {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int tag_sel; int tags; int control; int * thresh; int * fdq_sel; } ;


 int chan_teardown (struct knav_dma_chan*) ;
 int dev_dbg (int ,char*) ;
 TYPE_2__* kdev ;
 int memset (int *,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (int ,int *) ;

__attribute__((used)) static void chan_stop(struct knav_dma_chan *chan)
{
 spin_lock(&chan->lock);
 if (chan->reg_rx_flow) {

  writel_relaxed(0, &chan->reg_rx_flow->fdq_sel[0]);
  writel_relaxed(0, &chan->reg_rx_flow->fdq_sel[1]);
  writel_relaxed(0, &chan->reg_rx_flow->thresh[0]);
  writel_relaxed(0, &chan->reg_rx_flow->thresh[1]);
  writel_relaxed(0, &chan->reg_rx_flow->thresh[2]);
 }


 chan_teardown(chan);


 if (chan->reg_rx_flow) {
  writel_relaxed(0, &chan->reg_rx_flow->control);
  writel_relaxed(0, &chan->reg_rx_flow->tags);
  writel_relaxed(0, &chan->reg_rx_flow->tag_sel);
 }

 memset(&chan->cfg, 0, sizeof(struct knav_dma_cfg));
 spin_unlock(&chan->lock);

 dev_dbg(kdev->dev, "channel stopped\n");
}
