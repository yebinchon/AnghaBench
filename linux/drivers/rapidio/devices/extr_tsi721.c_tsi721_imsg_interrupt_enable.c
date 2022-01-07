
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi721_device {int flags; scalar_t__ regs; } ;


 scalar_t__ TSI721_DEV_CHAN_INTE ;
 scalar_t__ TSI721_IBDMAC_INT (int) ;
 scalar_t__ TSI721_IBDMAC_INTE (int) ;
 int TSI721_INT_IMSG_CHAN (int) ;
 int TSI721_USING_MSIX ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void
tsi721_imsg_interrupt_enable(struct tsi721_device *priv, int ch,
      u32 inte_mask)
{
 u32 rval;

 if (!inte_mask)
  return;


 iowrite32(inte_mask, priv->regs + TSI721_IBDMAC_INT(ch));


 rval = ioread32(priv->regs + TSI721_IBDMAC_INTE(ch));
 iowrite32(rval | inte_mask, priv->regs + TSI721_IBDMAC_INTE(ch));

 if (priv->flags & TSI721_USING_MSIX)
  return;






 rval = ioread32(priv->regs + TSI721_DEV_CHAN_INTE);
 iowrite32(rval | TSI721_INT_IMSG_CHAN(ch),
    priv->regs + TSI721_DEV_CHAN_INTE);
}
