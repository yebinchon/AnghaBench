
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_hsdma_chan {int desc_addr; } ;
struct TYPE_2__ {int dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; struct mtk_hsdma_chan* chan; } ;
struct hsdma_desc {int dummy; } ;


 int HSDMA_DESCS_NUM ;
 int HSDMA_GLO_DEFAULT ;
 int HSDMA_INFO_RX_MASK ;
 int HSDMA_INFO_RX_SHIFT ;
 int HSDMA_INFO_TX_MASK ;
 int HSDMA_INFO_TX_SHIFT ;
 int HSDMA_INT_RX_Q0 ;
 int HSDMA_REG_GLO_CFG ;
 int HSDMA_REG_INFO ;
 int HSDMA_REG_INT_MASK ;
 int HSDMA_REG_RX_BASE ;
 int HSDMA_REG_RX_CNT ;
 int HSDMA_REG_TX_BASE ;
 int HSDMA_REG_TX_CNT ;
 int dev_info (int ,char*,int,int) ;
 int hsdma_dump_reg (struct mtk_hsdam_engine*) ;
 int mtk_hsdam_alloc_desc (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 int mtk_hsdma_read (struct mtk_hsdam_engine*,int ) ;
 int mtk_hsdma_reset_chan (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ;
 int mtk_hsdma_write (struct mtk_hsdam_engine*,int ,int) ;

__attribute__((used)) static int mtk_hsdma_init(struct mtk_hsdam_engine *hsdma)
{
 struct mtk_hsdma_chan *chan;
 int ret;
 u32 reg;


 chan = &hsdma->chan[0];
 ret = mtk_hsdam_alloc_desc(hsdma, chan);
 if (ret)
  return ret;


 mtk_hsdma_write(hsdma, HSDMA_REG_TX_BASE, chan->desc_addr);
 mtk_hsdma_write(hsdma, HSDMA_REG_TX_CNT, HSDMA_DESCS_NUM);

 mtk_hsdma_write(hsdma, HSDMA_REG_RX_BASE, chan->desc_addr +
   (sizeof(struct hsdma_desc) * HSDMA_DESCS_NUM));
 mtk_hsdma_write(hsdma, HSDMA_REG_RX_CNT, HSDMA_DESCS_NUM);

 mtk_hsdma_reset_chan(hsdma, chan);


 mtk_hsdma_write(hsdma, HSDMA_REG_INT_MASK, HSDMA_INT_RX_Q0);


 mtk_hsdma_write(hsdma, HSDMA_REG_GLO_CFG, HSDMA_GLO_DEFAULT);


 reg = mtk_hsdma_read(hsdma, HSDMA_REG_INFO);
 dev_info(hsdma->ddev.dev, "rx: %d, tx: %d\n",
   (reg >> HSDMA_INFO_RX_SHIFT) & HSDMA_INFO_RX_MASK,
   (reg >> HSDMA_INFO_TX_SHIFT) & HSDMA_INFO_TX_MASK);

 hsdma_dump_reg(hsdma);

 return ret;
}
