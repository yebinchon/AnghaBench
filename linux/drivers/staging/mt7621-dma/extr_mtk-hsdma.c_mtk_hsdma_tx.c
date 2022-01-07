
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_hsdma_chan {scalar_t__ desc; } ;
struct TYPE_2__ {int dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; struct mtk_hsdma_chan* chan; int chan_issued; } ;


 int dev_dbg (int ,char*) ;
 int mtk_hsdma_start_transfer (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void mtk_hsdma_tx(struct mtk_hsdam_engine *hsdma)
{
 struct mtk_hsdma_chan *chan;

 if (test_and_clear_bit(0, &hsdma->chan_issued)) {
  chan = &hsdma->chan[0];
  if (chan->desc)
   mtk_hsdma_start_transfer(hsdma, chan);
  else
   dev_dbg(hsdma->ddev.dev, "chan 0 no desc to issue\n");
 }
}
