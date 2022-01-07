
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_chan {int dummy; } ;
struct mtk_hsdam_engine {struct mtk_hsdma_chan* chan; } ;


 int HSDMA_REG_GLO_CFG ;
 int HSDMA_REG_INT_MASK ;
 int HSDMA_REG_RX_BASE ;
 int HSDMA_REG_RX_CNT ;
 int HSDMA_REG_TX_BASE ;
 int HSDMA_REG_TX_CNT ;
 int mtk_hsdam_free_desc (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 int mtk_hsdma_reset_chan (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 int mtk_hsdma_write (struct mtk_hsdam_engine*,int ,int ) ;

__attribute__((used)) static void mtk_hsdma_uninit(struct mtk_hsdam_engine *hsdma)
{
 struct mtk_hsdma_chan *chan;


 mtk_hsdma_write(hsdma, HSDMA_REG_GLO_CFG, 0);


 mtk_hsdma_write(hsdma, HSDMA_REG_INT_MASK, 0);


 chan = &hsdma->chan[0];
 mtk_hsdam_free_desc(hsdma, chan);


 mtk_hsdma_write(hsdma, HSDMA_REG_TX_BASE, 0);
 mtk_hsdma_write(hsdma, HSDMA_REG_TX_CNT, 0);

 mtk_hsdma_write(hsdma, HSDMA_REG_RX_BASE, 0);
 mtk_hsdma_write(hsdma, HSDMA_REG_RX_CNT, 0);

 mtk_hsdma_reset_chan(hsdma, chan);
}
