
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; } ;


 int HSDMA_REG_DELAY_INT ;
 int HSDMA_REG_GLO_CFG ;
 int HSDMA_REG_INFO ;
 int HSDMA_REG_INT_MASK ;
 int HSDMA_REG_INT_STATUS ;
 int HSDMA_REG_RX_BASE ;
 int HSDMA_REG_RX_CNT ;
 int HSDMA_REG_RX_CRX ;
 int HSDMA_REG_RX_DRX ;
 int HSDMA_REG_TX_BASE ;
 int HSDMA_REG_TX_CNT ;
 int HSDMA_REG_TX_CTX ;
 int HSDMA_REG_TX_DTX ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,...) ;
 int mtk_hsdma_read (struct mtk_hsdam_engine*,int ) ;

__attribute__((used)) static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
{
 dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, " "tctx %08x, tdtx: %08x, rbase %08x, " "rcnt %08x, rctx %08x, rdtx %08x\n",


   mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
   mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
   mtk_hsdma_read(hsdma, HSDMA_REG_TX_CTX),
   mtk_hsdma_read(hsdma, HSDMA_REG_TX_DTX),
   mtk_hsdma_read(hsdma, HSDMA_REG_RX_BASE),
   mtk_hsdma_read(hsdma, HSDMA_REG_RX_CNT),
   mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
   mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));

 dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, " "intr_stat %08x, intr_mask %08x\n",

   mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
   mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
   mtk_hsdma_read(hsdma, HSDMA_REG_DELAY_INT),
   mtk_hsdma_read(hsdma, HSDMA_REG_INT_STATUS),
   mtk_hsdma_read(hsdma, HSDMA_REG_INT_MASK));
}
