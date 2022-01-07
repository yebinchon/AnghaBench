
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_device {scalar_t__ regs; } ;


 scalar_t__ TSI721_IBDMAC_INT (int) ;
 int TSI721_IBDMAC_INT_MASK ;
 scalar_t__ TSI721_IBDMAC_STS (int) ;
 int TSI721_IMSG_CHNUM ;
 scalar_t__ TSI721_RETRY_GEN_CNT ;
 scalar_t__ TSI721_RETRY_RX_CNT ;
 scalar_t__ TSI721_RQRPTO ;
 int TSI721_RQRPTO_VAL ;
 scalar_t__ TSI721_SMSG_ECC_COR_LOG (int) ;
 int TSI721_SMSG_ECC_COR_LOG_MASK ;
 scalar_t__ TSI721_SMSG_ECC_LOG ;
 scalar_t__ TSI721_SMSG_ECC_NCOR (int) ;
 int TSI721_SMSG_ECC_NCOR_MASK ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static int tsi721_messages_init(struct tsi721_device *priv)
{
 int ch;

 iowrite32(0, priv->regs + TSI721_SMSG_ECC_LOG);
 iowrite32(0, priv->regs + TSI721_RETRY_GEN_CNT);
 iowrite32(0, priv->regs + TSI721_RETRY_RX_CNT);


 iowrite32(TSI721_RQRPTO_VAL, priv->regs + TSI721_RQRPTO);


 for (ch = 0; ch < TSI721_IMSG_CHNUM; ch++) {

  iowrite32(TSI721_IBDMAC_INT_MASK,
   priv->regs + TSI721_IBDMAC_INT(ch));

  iowrite32(0, priv->regs + TSI721_IBDMAC_STS(ch));

  iowrite32(TSI721_SMSG_ECC_COR_LOG_MASK,
    priv->regs + TSI721_SMSG_ECC_COR_LOG(ch));
  iowrite32(TSI721_SMSG_ECC_NCOR_MASK,
    priv->regs + TSI721_SMSG_ECC_NCOR(ch));
 }

 return 0;
}
