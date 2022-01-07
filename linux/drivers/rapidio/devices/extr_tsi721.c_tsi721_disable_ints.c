
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_device {scalar_t__ regs; } ;


 scalar_t__ TSI721_BDMA_INTE ;
 scalar_t__ TSI721_DEV_CHAN_INTE ;
 scalar_t__ TSI721_DEV_INTE ;
 scalar_t__ TSI721_DMAC_BASE (int) ;
 scalar_t__ TSI721_DMAC_INTE ;
 int TSI721_DMA_MAXCH ;
 scalar_t__ TSI721_I2C_INT_ENABLE ;
 scalar_t__ TSI721_IBDMAC_INTE (int) ;
 int TSI721_IMSG_CHNUM ;
 scalar_t__ TSI721_OBDMAC_INTE (int) ;
 int TSI721_OMSG_CHNUM ;
 scalar_t__ TSI721_PC2SR_INTE ;
 scalar_t__ TSI721_RIO_EM_DEV_INT_EN ;
 scalar_t__ TSI721_RIO_EM_INT_ENABLE ;
 scalar_t__ TSI721_SMSG_INTE ;
 scalar_t__ TSI721_SR2PC_GEN_INTE ;
 int TSI721_SRIO_MAXCH ;
 scalar_t__ TSI721_SR_CHINTE (int) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void tsi721_disable_ints(struct tsi721_device *priv)
{
 int ch;


 iowrite32(0, priv->regs + TSI721_DEV_INTE);


 iowrite32(0, priv->regs + TSI721_DEV_CHAN_INTE);


 for (ch = 0; ch < TSI721_IMSG_CHNUM; ch++)
  iowrite32(0, priv->regs + TSI721_IBDMAC_INTE(ch));


 for (ch = 0; ch < TSI721_OMSG_CHNUM; ch++)
  iowrite32(0, priv->regs + TSI721_OBDMAC_INTE(ch));


 iowrite32(0, priv->regs + TSI721_SMSG_INTE);


 for (ch = 0; ch < TSI721_DMA_MAXCH; ch++)
  iowrite32(0,
   priv->regs + TSI721_DMAC_BASE(ch) + TSI721_DMAC_INTE);


 iowrite32(0, priv->regs + TSI721_BDMA_INTE);


 for (ch = 0; ch < TSI721_SRIO_MAXCH; ch++)
  iowrite32(0, priv->regs + TSI721_SR_CHINTE(ch));


 iowrite32(0, priv->regs + TSI721_SR2PC_GEN_INTE);


 iowrite32(0, priv->regs + TSI721_PC2SR_INTE);


 iowrite32(0, priv->regs + TSI721_I2C_INT_ENABLE);


 iowrite32(0, priv->regs + TSI721_RIO_EM_INT_ENABLE);
 iowrite32(0, priv->regs + TSI721_RIO_EM_DEV_INT_EN);
}
