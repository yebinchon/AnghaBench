
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tsi721_device {int flags; scalar_t__ regs; int * bdma; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int DMA ;
 int IDB_QUEUE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RIO_MAX_MBOX ;
 scalar_t__ TSI721_DEV_CHAN_INT ;
 scalar_t__ TSI721_DEV_CHAN_INTE ;
 scalar_t__ TSI721_DEV_INT ;
 scalar_t__ TSI721_DEV_INTE ;
 int TSI721_DEV_INT_BDMA_CH ;
 int TSI721_DEV_INT_SMSG_CH ;
 int TSI721_DEV_INT_SR2PC_CH ;
 int TSI721_DEV_INT_SRIO ;
 int TSI721_DMA_MAXCH ;
 int TSI721_INT_BDMA_CHAN (int) ;
 int TSI721_INT_BDMA_CHAN_M ;
 int TSI721_INT_IMSG_CHAN (int) ;
 int TSI721_INT_IMSG_CHAN_M ;
 int TSI721_INT_OMSG_CHAN (int) ;
 int TSI721_INT_OMSG_CHAN_M ;
 int TSI721_INT_SR2PC_CHAN (int ) ;
 scalar_t__ TSI721_RIO_EM_INT_STAT ;
 int TSI721_RIO_EM_INT_STAT_PW_RX ;
 scalar_t__ TSI721_SR_CHINT (int ) ;
 int TSI721_SR_CHINT_IDBQRCV ;
 int TSI721_USING_MSI ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int tsi721_bdma_handler (int *) ;
 int tsi721_dbell_handler (struct tsi721_device*) ;
 int tsi721_imsg_handler (struct tsi721_device*,int) ;
 int tsi721_omsg_handler (struct tsi721_device*,int) ;
 int tsi721_pw_handler (struct tsi721_device*) ;
 int tsi_debug (int ,int *,char*,int) ;
 int tsi_info (int *,char*,int) ;

__attribute__((used)) static irqreturn_t tsi721_irqhandler(int irq, void *ptr)
{
 struct tsi721_device *priv = (struct tsi721_device *)ptr;
 u32 dev_int;
 u32 dev_ch_int;
 u32 intval;
 u32 ch_inte;


 if (priv->flags & TSI721_USING_MSI)
  iowrite32(0, priv->regs + TSI721_DEV_INTE);

 dev_int = ioread32(priv->regs + TSI721_DEV_INT);
 if (!dev_int)
  return IRQ_NONE;

 dev_ch_int = ioread32(priv->regs + TSI721_DEV_CHAN_INT);

 if (dev_int & TSI721_DEV_INT_SR2PC_CH) {

  if (dev_ch_int & TSI721_INT_SR2PC_CHAN(IDB_QUEUE)) {

   intval = ioread32(priv->regs +
      TSI721_SR_CHINT(IDB_QUEUE));
   if (intval & TSI721_SR_CHINT_IDBQRCV)
    tsi721_dbell_handler(priv);
   else
    tsi_info(&priv->pdev->dev,
     "Unsupported SR_CH_INT %x", intval);


   iowrite32(intval,
    priv->regs + TSI721_SR_CHINT(IDB_QUEUE));
   ioread32(priv->regs + TSI721_SR_CHINT(IDB_QUEUE));
  }
 }

 if (dev_int & TSI721_DEV_INT_SMSG_CH) {
  int ch;





  if (dev_ch_int & TSI721_INT_IMSG_CHAN_M) {

   ch_inte = ioread32(priv->regs + TSI721_DEV_CHAN_INTE);
   ch_inte &= ~(dev_ch_int & TSI721_INT_IMSG_CHAN_M);
   iowrite32(ch_inte, priv->regs + TSI721_DEV_CHAN_INTE);




   for (ch = 4; ch < RIO_MAX_MBOX + 4; ch++) {
    if (!(dev_ch_int & TSI721_INT_IMSG_CHAN(ch)))
     continue;
    tsi721_imsg_handler(priv, ch);
   }
  }

  if (dev_ch_int & TSI721_INT_OMSG_CHAN_M) {

   ch_inte = ioread32(priv->regs + TSI721_DEV_CHAN_INTE);
   ch_inte &= ~(dev_ch_int & TSI721_INT_OMSG_CHAN_M);
   iowrite32(ch_inte, priv->regs + TSI721_DEV_CHAN_INTE);





   for (ch = 0; ch < RIO_MAX_MBOX; ch++) {
    if (!(dev_ch_int & TSI721_INT_OMSG_CHAN(ch)))
     continue;
    tsi721_omsg_handler(priv, ch);
   }
  }
 }

 if (dev_int & TSI721_DEV_INT_SRIO) {

  intval = ioread32(priv->regs + TSI721_RIO_EM_INT_STAT);
  if (intval & TSI721_RIO_EM_INT_STAT_PW_RX)
   tsi721_pw_handler(priv);
 }
 if (priv->flags & TSI721_USING_MSI) {
  dev_int = TSI721_DEV_INT_SR2PC_CH | TSI721_DEV_INT_SRIO |
   TSI721_DEV_INT_SMSG_CH | TSI721_DEV_INT_BDMA_CH;
  iowrite32(dev_int, priv->regs + TSI721_DEV_INTE);
 }

 return IRQ_HANDLED;
}
