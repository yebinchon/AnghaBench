
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tsi721_device {scalar_t__ regs; scalar_t__ idb_dma; int idb_base; TYPE_1__* pdev; int idb_work; scalar_t__ db_discard_count; } ;
struct TYPE_2__ {int dev; } ;


 int DBELL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDB_QSIZE ;
 int IDB_QUEUE ;
 int INIT_WORK (int *,int ) ;
 int TSI721_IDB_ENTRY_SIZE ;
 scalar_t__ TSI721_IDQ_BASEL (int ) ;
 int TSI721_IDQ_BASEL_ADDR ;
 scalar_t__ TSI721_IDQ_BASEU (int ) ;
 scalar_t__ TSI721_IDQ_CTL (int ) ;
 int TSI721_IDQ_INIT ;
 scalar_t__ TSI721_IDQ_MASK (int ) ;
 scalar_t__ TSI721_IDQ_RP (int ) ;
 scalar_t__ TSI721_IDQ_SIZE (int ) ;
 int TSI721_IDQ_SIZE_VAL (int) ;
 int dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int iowrite32 (int,scalar_t__) ;
 int tsi721_db_dpc ;
 int tsi_debug (int ,int *,char*,int ,scalar_t__*) ;

__attribute__((used)) static int tsi721_doorbell_init(struct tsi721_device *priv)
{






 priv->db_discard_count = 0;
 INIT_WORK(&priv->idb_work, tsi721_db_dpc);


 priv->idb_base = dma_alloc_coherent(&priv->pdev->dev,
         IDB_QSIZE * TSI721_IDB_ENTRY_SIZE,
         &priv->idb_dma, GFP_KERNEL);
 if (!priv->idb_base)
  return -ENOMEM;

 tsi_debug(DBELL, &priv->pdev->dev,
    "Allocated IDB buffer @ %p (phys = %pad)",
    priv->idb_base, &priv->idb_dma);

 iowrite32(TSI721_IDQ_SIZE_VAL(IDB_QSIZE),
  priv->regs + TSI721_IDQ_SIZE(IDB_QUEUE));
 iowrite32(((u64)priv->idb_dma >> 32),
  priv->regs + TSI721_IDQ_BASEU(IDB_QUEUE));
 iowrite32(((u64)priv->idb_dma & TSI721_IDQ_BASEL_ADDR),
  priv->regs + TSI721_IDQ_BASEL(IDB_QUEUE));

 iowrite32(0, priv->regs + TSI721_IDQ_MASK(IDB_QUEUE));

 iowrite32(TSI721_IDQ_INIT, priv->regs + TSI721_IDQ_CTL(IDB_QUEUE));

 iowrite32(0, priv->regs + TSI721_IDQ_RP(IDB_QUEUE));

 return 0;
}
