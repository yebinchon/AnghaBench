
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_hsdma_chan {TYPE_2__* rx_ring; TYPE_1__* tx_ring; } ;
struct mtk_hsdam_engine {int dummy; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ addr0; } ;
struct TYPE_3__ {int flags; scalar_t__ addr0; } ;


 int HSDMA_DESCS_NUM ;
 int HSDMA_DESC_DONE ;
 int HSDMA_DESC_LS0 ;
 int HSDMA_GLO_DEFAULT ;
 int HSDMA_INT_RX_Q0 ;
 int HSDMA_REG_GLO_CFG ;
 int HSDMA_REG_INT_MASK ;
 int mtk_hsdma_reset_chan (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 int mtk_hsdma_write (struct mtk_hsdam_engine*,int ,int ) ;

__attribute__((used)) static void mtk_hsdma_reset(struct mtk_hsdam_engine *hsdma,
       struct mtk_hsdma_chan *chan)
{
 int i;


 mtk_hsdma_write(hsdma, HSDMA_REG_GLO_CFG, 0);


 mtk_hsdma_write(hsdma, HSDMA_REG_INT_MASK, 0);


 for (i = 0; i < HSDMA_DESCS_NUM; i++) {
  chan->tx_ring[i].addr0 = 0;
  chan->tx_ring[i].flags = HSDMA_DESC_LS0 | HSDMA_DESC_DONE;
 }
 for (i = 0; i < HSDMA_DESCS_NUM; i++) {
  chan->rx_ring[i].addr0 = 0;
  chan->rx_ring[i].flags = 0;
 }


 mtk_hsdma_reset_chan(hsdma, chan);


 mtk_hsdma_write(hsdma, HSDMA_REG_INT_MASK, HSDMA_INT_RX_Q0);


 mtk_hsdma_write(hsdma, HSDMA_REG_GLO_CFG, HSDMA_GLO_DEFAULT);
}
