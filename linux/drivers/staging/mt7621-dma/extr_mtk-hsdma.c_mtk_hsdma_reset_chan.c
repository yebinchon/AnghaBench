
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_chan {int tx_idx; int rx_idx; int id; } ;
struct mtk_hsdam_engine {int dummy; } ;


 int HSDMA_DESCS_NUM ;
 int HSDMA_REG_RST_CFG ;
 int HSDMA_REG_RX_CRX ;
 int HSDMA_REG_TX_CTX ;
 int HSDMA_RST_RX_SHIFT ;
 int HSDMA_RST_TX_SHIFT ;
 int mtk_hsdma_write (struct mtk_hsdam_engine*,int ,int) ;

__attribute__((used)) static void mtk_hsdma_reset_chan(struct mtk_hsdam_engine *hsdma,
     struct mtk_hsdma_chan *chan)
{
 chan->tx_idx = 0;
 chan->rx_idx = HSDMA_DESCS_NUM - 1;

 mtk_hsdma_write(hsdma, HSDMA_REG_TX_CTX, chan->tx_idx);
 mtk_hsdma_write(hsdma, HSDMA_REG_RX_CRX, chan->rx_idx);

 mtk_hsdma_write(hsdma, HSDMA_REG_RST_CFG,
   0x1 << (chan->id + HSDMA_RST_TX_SHIFT));
 mtk_hsdma_write(hsdma, HSDMA_REG_RST_CFG,
   0x1 << (chan->id + HSDMA_RST_RX_SHIFT));
}
