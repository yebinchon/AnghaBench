
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct mtk_hsdma_chan {TYPE_2__ vchan; int id; int * desc; } ;
struct TYPE_4__ {int dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; int chan_issued; } ;
struct dma_chan {int dummy; } ;


 int HSDMA_GLO_RX_BUSY ;
 int HSDMA_GLO_TX_BUSY ;
 int HSDMA_REG_GLO_CFG ;
 int LIST_HEAD (int ) ;
 int clear_bit (int ,int *) ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int head ;
 int hsdma_dump_desc (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 struct mtk_hsdam_engine* mtk_hsdma_chan_get_dev (struct mtk_hsdma_chan*) ;
 int mtk_hsdma_read (struct mtk_hsdam_engine*,int ) ;
 int mtk_hsdma_reset (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 struct mtk_hsdma_chan* to_mtk_hsdma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;

__attribute__((used)) static int mtk_hsdma_terminate_all(struct dma_chan *c)
{
 struct mtk_hsdma_chan *chan = to_mtk_hsdma_chan(c);
 struct mtk_hsdam_engine *hsdma = mtk_hsdma_chan_get_dev(chan);
 unsigned long timeout;
 LIST_HEAD(head);

 spin_lock_bh(&chan->vchan.lock);
 chan->desc = ((void*)0);
 clear_bit(chan->id, &hsdma->chan_issued);
 vchan_get_all_descriptors(&chan->vchan, &head);
 spin_unlock_bh(&chan->vchan.lock);

 vchan_dma_desc_free_list(&chan->vchan, &head);


 timeout = jiffies + msecs_to_jiffies(2000);
 while (mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG) &
   (HSDMA_GLO_RX_BUSY | HSDMA_GLO_TX_BUSY)) {
  if (time_after_eq(jiffies, timeout)) {
   hsdma_dump_desc(hsdma, chan);
   mtk_hsdma_reset(hsdma, chan);
   dev_err(hsdma->ddev.dev, "timeout, reset it\n");
   break;
  }
  cpu_relax();
 }

 return 0;
}
