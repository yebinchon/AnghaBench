
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_chan {int rx_idx; int next_sg; } ;
struct mtk_hsdam_engine {struct mtk_hsdma_chan* chan; } ;


 int HSDMA_DESCS_MASK ;
 int HSDMA_NEXT_DESC (int) ;
 int HSDMA_REG_RX_CRX ;
 int HSDMA_REG_RX_DRX ;
 int mtk_hsdma_chan_done (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 int mtk_hsdma_read (struct mtk_hsdam_engine*,int ) ;
 int mtk_hsdma_write (struct mtk_hsdam_engine*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void mtk_hsdma_rx(struct mtk_hsdam_engine *hsdma)
{
 struct mtk_hsdma_chan *chan;
 int next_idx, drx_idx, cnt;

 chan = &hsdma->chan[0];
 next_idx = HSDMA_NEXT_DESC(chan->rx_idx);
 drx_idx = mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX);

 cnt = (drx_idx - next_idx) & HSDMA_DESCS_MASK;
 if (!cnt)
  return;

 chan->next_sg += cnt;
 chan->rx_idx = (chan->rx_idx + cnt) & HSDMA_DESCS_MASK;


 wmb();
 mtk_hsdma_write(hsdma, HSDMA_REG_RX_CRX, chan->rx_idx);

 mtk_hsdma_chan_done(hsdma, chan);
}
