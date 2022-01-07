
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct rio_mport {TYPE_2__* inb_msg; } ;
struct tsi721_device {int flags; TYPE_3__* imsg_ring; scalar_t__ regs; TYPE_1__* pdev; struct rio_mport mport; } ;
struct TYPE_6__ {int lock; int dev_id; } ;
struct TYPE_5__ {int (* mcback ) (struct rio_mport*,int ,size_t,int) ;} ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ TSI721_DEV_CHAN_INTE ;
 scalar_t__ TSI721_IBDMAC_INT (int) ;
 size_t TSI721_IBDMAC_INT_DQ_RCV ;
 size_t TSI721_IBDMAC_INT_FQ_LOW ;
 size_t TSI721_IBDMAC_INT_PC_ERROR ;
 size_t TSI721_IBDMAC_INT_SRTO ;
 size_t TSI721_INT_IMSG_CHAN (int) ;
 int TSI721_USING_MSIX ;
 size_t ioread32 (scalar_t__) ;
 int iowrite32 (size_t,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rio_mport*,int ,size_t,int) ;
 int tsi_info (int *,char*,size_t) ;

__attribute__((used)) static void tsi721_imsg_handler(struct tsi721_device *priv, int ch)
{
 u32 mbox = ch - 4;
 u32 imsg_int;
 struct rio_mport *mport = &priv->mport;

 spin_lock(&priv->imsg_ring[mbox].lock);

 imsg_int = ioread32(priv->regs + TSI721_IBDMAC_INT(ch));

 if (imsg_int & TSI721_IBDMAC_INT_SRTO)
  tsi_info(&priv->pdev->dev, "IB MBOX%d SRIO timeout", mbox);

 if (imsg_int & TSI721_IBDMAC_INT_PC_ERROR)
  tsi_info(&priv->pdev->dev, "IB MBOX%d PCIe error", mbox);

 if (imsg_int & TSI721_IBDMAC_INT_FQ_LOW)
  tsi_info(&priv->pdev->dev, "IB MBOX%d IB free queue low", mbox);


 iowrite32(imsg_int, priv->regs + TSI721_IBDMAC_INT(ch));


 if (imsg_int & TSI721_IBDMAC_INT_DQ_RCV &&
  mport->inb_msg[mbox].mcback)
  mport->inb_msg[mbox].mcback(mport,
    priv->imsg_ring[mbox].dev_id, mbox, -1);

 if (!(priv->flags & TSI721_USING_MSIX)) {
  u32 ch_inte;


  ch_inte = ioread32(priv->regs + TSI721_DEV_CHAN_INTE);
  ch_inte |= TSI721_INT_IMSG_CHAN(ch);
  iowrite32(ch_inte, priv->regs + TSI721_DEV_CHAN_INTE);
 }

 spin_unlock(&priv->imsg_ring[mbox].lock);
}
